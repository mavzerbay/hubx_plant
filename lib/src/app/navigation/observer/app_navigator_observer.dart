import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hubx/src/shared/mixin/log_mixin.dart';

class AppNavigatorObserver extends NavigatorObserver with LogMixin {
  AppNavigatorObserver();

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didPush from ${previousRoute?.settings.name} '
        'to ${route.settings.name}',
      );
    }

    _sendScreenView(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didPop ${route.settings.name}, '
        'back to ${previousRoute?.settings.name}',
      );
    }

    if (previousRoute != null) _sendScreenView(previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didRemove ${route.settings.name}, '
        'back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (kDebugMode) {
      logD(
        'didReplace ${oldRoute?.settings.name} '
        'by ${newRoute?.settings.name}',
      );
    }

    if (newRoute != null) _sendScreenView(newRoute);
  }

  void _sendScreenView(Route<dynamic> route) {
    if (route is! PageRoute) return;

    final screenName = route.settings.name;
    final parameters =
        route.settings.arguments != null &&
            route.settings.arguments is Map<String, dynamic>
        ? route.settings.arguments! as Map<String, dynamic>
        : null;
    if (screenName != null) {
      _analytics
          .logScreenView(screenName: screenName, parameters: parameters?.cast())
          .catchError(
            (Object error) {
              logE(
                'Error logging screen view for $screenName',
                error: error,
              );
            },
          );
    }
  }
}
