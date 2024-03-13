import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  // static UserAccount? currentUser = CurrentUser().userAccount;

  static String initialLocation = '/dashboard';
  // static String initialLocation = '/dashboard';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final _exploreNavigatorAKey =
      GlobalKey<NavigatorState>(debugLabel: 'Explore');

  static final _dontateNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'donate');

  static final _accountNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'account');

  static final _resourcesNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'resources');

  static GoRouter returnRouter({required bool isAuth}) {
    GoRouter router = GoRouter(
      initialLocation: '/start',
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes: [],
    );

    //   redirect: (context, state) {
    //     if (!isAuth) {
    //       return state.namedLocation(MyAppRouteConstants.loginRouteName);
    //     } else {
    //       return null;
    //     }
    //   },
    // );
    return router;
  }
}
