import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/base_page.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/components/custom_circular_progress_fullscreen.dart';
import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/navigation/app_router.dart';
import 'package:hubx/src/app/navigation/observer/app_navigator_observer.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_themes.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends BasePageState<MyApp, AppBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      useInheritedMediaQuery: true,
      builder: (context, _) => ReactiveFormConfig(
        validationMessages: {
          ValidationMessage.email: (_) => locale.validation.emailIsNotValid,
          ValidationMessage.mustMatch: (_) =>
              locale.validation.passwordsNotMatch,
          'invalidPhoneNumber': (_) => locale.validation.invalidPhoneNumber,
          'invalidPassword': (_) => locale.validation.passwordIsNotValid,
        },
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return MaterialApp.router(
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              supportedLocales: AppLocaleUtils.supportedLocales,
              locale: _getAppLocale(context, state),
              builder: (context, child) {
                ScreenUtil.init(context, designSize: const Size(360, 800));
                Translations.of(context);
                final data = MediaQuery.of(context);
                AppColors.of(context);
                AppThemeSetting.currentAppThemeType =
                    state.themeMode == ThemeMode.system
                    ? context.isDarkMode
                          ? AppThemeType.dark
                          : AppThemeType.light
                    : state.themeMode == ThemeMode.dark
                    ? AppThemeType.dark
                    : AppThemeType.light;
                return MediaQuery(
                  data: data.copyWith(
                    textScaler: TextScaler.linear(1.sp),
                  ),
                  child: Stack(
                    children: [
                      child ?? const SizedBox.shrink(),
                      if (state.isLoadingVisible)
                        CustomCircularProgressFullScreen(
                          loaderTitle: state.loadingMessage,
                        ),
                    ],
                  ),
                );
              },
              routerDelegate: locator<AppRouter>().delegate(
                navigatorObservers: () => [AppNavigatorObserver()],
              ),
              routeInformationParser: locator<AppRouter>().defaultRouteParser(),
              title: 'PlantHubX',
              themeMode: state.themeMode,
              theme: lightTheme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }

  Locale _getAppLocale(BuildContext context, AppState state) {
    if (state.locale == null) {
      final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
      final supported = AppLocaleUtils.supportedLocales;
      final matched = supported.firstWhere(
        (l) => l.languageCode == deviceLocale.languageCode,
        orElse: () => AppLocale.tr.flutterLocale,
      );
      return matched;
    }
    return TranslationProvider.of(context).flutterLocale;
  }
}
