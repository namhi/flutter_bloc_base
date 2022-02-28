import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/navigation/router_name.dart';
import 'package:go_router/go_router.dart';

import '../authentication_state.dart';

class AppRouter {
  late final router = GoRouter(
    refreshListenable: AuthenticationState(),
    debugLogDiagnostics: kDebugMode,
    urlPathStrategy: UrlPathStrategy.path,
    errorPageBuilder: (context, state) => MaterialPage(child: Container()),
    routes: [
      GoRoute(path: RouteNames.home, builder: (context, state) => Container()),
      GoRoute(path: RouteNames.about, builder: (context, state) => Container()),
      GoRoute(path: RouteNames.login, builder: (context, state) => Container()),
      GoRoute(
          path: RouteNames.register, builder: (context, state) => Container()),
      GoRoute(
        path: RouteNames.onBoarding,
        pageBuilder: (context, state) => MaterialPage(
          child: Container(),
        ),
      ),
    ],
  );
}
