import 'package:bookly/features/home/presenation/views/book_detials_view.dart';
import 'package:bookly/features/search/presentatiom/view/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presenation/views/home.dart';
import '../../features/splash/presenation/views/splash_view.dart';

abstract class AppRouter{
  static String homeView='/home';
  static String bookDetailsView='/book';
  static String searchView='/search';
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );

}