import 'dart:io';

import 'package:encrypt_shared_preferences/provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hubx/firebase_options_dev.dart' as dev;
import 'package:hubx/firebase_options_dev.dart' as prod;
import 'package:hubx/src/app/base/bloc/app_bloc_observer.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/resource/constants/env_constants.dart';
import 'package:hubx/src/shared/config.dart';
import 'package:intl/date_symbol_data_local.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

abstract class ApplicationConfig extends Config {}

class AppConfig extends ApplicationConfig {
  AppConfig._();
  static final AppConfig _instance = AppConfig._();

  static AppConfig get instance => _instance;

  @override
  Future<void> config() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await EncryptedSharedPreferences.initialize(
      EnvConstants.encryptedSharedPrefKey,
    );

    await Firebase.initializeApp(
      options: switch (appFlavor) {
        'development' => dev.DefaultFirebaseOptions.currentPlatform,
        // Normalde staging için de ayarlanmış bir yapı kullanılmalı
        'staging' => dev.DefaultFirebaseOptions.currentPlatform,
        'production' => prod.DefaultFirebaseOptions.currentPlatform,
        _ => dev.DefaultFirebaseOptions.currentPlatform,
      },
    );

    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
      kReleaseMode,
    );

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    await initializeDateFormatting();

    await setupLocator();

    locator<AppBloc>().add(const AppEvent.started());

    EnvConstants.init();

    Bloc.observer = AppBlocObserver();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    HttpOverrides.global = MyHttpOverrides();
  }
}
