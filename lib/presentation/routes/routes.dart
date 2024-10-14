import 'package:go_router/go_router.dart';
import 'package:movie_tmdb/presentation/pages/login_view.dart';
import 'package:movie_tmdb/presentation/pages/register_view.dart';
import 'package:movie_tmdb/presentation/pages/welcome_view.dart';

abstract class RoutesName {
  static const welcome = 'welcome';
  static const login = 'login';
  static const register = 'register';
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RoutesName.welcome,
      builder: (context, state) => const WelcomeView(),
    ),
    GoRoute(
      path: '/login',
      name: RoutesName.login,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/register',
      name: RoutesName.register,
      builder: (context, state) => const RegisterView(),
    ),
  ],
);
