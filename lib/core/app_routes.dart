
import 'package:awfar_gomla_vendor/features/Main/presentation/screens/main_screen.dart';
import 'package:awfar_gomla_vendor/features/login/presentation/screens/login_screen.dart';
import 'package:awfar_gomla_vendor/features/select_language/presentation/screens/select_language.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String selectLang = '/select_language';
  static const String login = '/login_screen';
  static const String mainRoute = '/main_screen';
  // static const String mainRoute = '/main';
}

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.initialRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: Routes.selectLang,
        builder: (BuildContext context, GoRouterState state) {
          return const SelectLangScreen();
        },
      ),
      GoRoute(
        path: Routes.login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: Routes.mainRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen();
        },
      ),
      // GoRoute(
      //   path: Routes.mainRoute,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const MainScreen();
      //   },
      //)
    ],
  );
}
