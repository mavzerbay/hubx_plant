import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/application_config.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/my_app.dart';
import 'package:hubx/src/shared/log_helper.dart';

Future<void> main() async {
  await runZonedGuarded(_runMyApp, _reportError);
}

Future<void> _runMyApp() async {
  await AppConfig.instance.init();
  await ScreenUtil.ensureScreenSize();

  runApp(
    TranslationProvider(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => locator<AppBloc>(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

void _reportError(Object error, StackTrace stackTrace) {
  Log.e(
    'runZonedGuarded error : $error',
    error,
    stackTrace,
  );

  FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);

  // report by Firebase Crashlytics here
}
