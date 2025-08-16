import 'package:auto_route/auto_route.dart';

import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';

final AppRouter router = locator<AppRouter>();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    CustomRoute<OnboardingRoute>(
      page: OnboardingRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      duration: const Duration(milliseconds: 400),
    ),
    CustomRoute<DashboardRoute>(
      page: DashboardRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      duration: const Duration(milliseconds: 400),
      children: [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: DiagnoseRoute.page),
        AutoRoute(page: AnalyzeRoute.page),
        AutoRoute(page: MyGardenRoute.page),
        AutoRoute(
          page: ProfileRoute.page,
          //guards: const [AuthGuard()], Login zorunlu durumlar için.
        ),
      ],
    ),
  ];
}
