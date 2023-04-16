import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presenation/views/home.dart';
import '../../features/splash/presenation/views/splash_view.dart';

abstract class AppRouter{
  static String homeView='/home';
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return Home();
        },
      ),
    ],
  );

}