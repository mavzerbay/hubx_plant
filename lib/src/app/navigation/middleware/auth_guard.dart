import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:hubx/src/app/base/cache/cache_manager.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';
import 'package:hubx/src/shared/async_helper/result.dart';
import 'package:hubx/src/shared/async_helper/run_catching.dart';

class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final output = await runAsyncCatching(
      action: () async {
        final token = await CacheManager.instance.getString(
          key: CacheKey.accessToken,
        );

        return token != null;
      },
    );

    final isLoggedIn = output.when(success: (o) => o, failure: (e) => false);

    if (isLoggedIn) {
      resolver.next();
    } else {
      unawaited(router.replace(const DashboardRoute()));
      resolver.next(false);
    }
  }
}
