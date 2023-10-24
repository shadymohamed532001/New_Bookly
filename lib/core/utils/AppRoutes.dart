// ignore_for_file: constant_identifier_names

import 'package:bookly_2/Features/Home/presentation/Views/HomeView.dart';
import 'package:bookly_2/Features/OnBording/presentation/Views/OnBordingView.dart';
import 'package:bookly_2/Features/Splash/presentation/Views/SplahView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String KhomeView = '/HomeView';
  static const String KSearchsView = '/SearchView';
  static const String KbookDietilsView = '/booksDetailsView';
  static const String KbookonBording = '/OnBordingView';

  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KbookonBording,
        builder: (context, state) => const OnBordingView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const HomeView(),
      ),
      // GoRoute(
      //   path: KbookDietilsView,
      //   builder: (context, state) => const booksDetailsView(),
      // ),
    ],
  );
}
