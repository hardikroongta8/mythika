import 'package:go_router/go_router.dart';
import 'package:mythika/routing/app_routes.dart';
import 'package:mythika/screens/auth/login_page.dart';
import 'package:mythika/screens/home/home.dart';
import 'package:mythika/screens/onboarding/onboarding.dart';
import 'package:mythika/splash.dart';

final goRouter =
    GoRouter(initialLocation: '/', debugLogDiagnostics: true, routes: [
  GoRoute(
    path: '/',
    name: AppRoutes.splash.name,
    builder: (context, state) => const Splash(),
  ),
  GoRoute(
    path: '/login',
    name: AppRoutes.loginPage.name,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/onboarding',
    name: AppRoutes.onboarding.name,
    builder: (context, state) => const Onboarding(),
  ),
  GoRoute(
    path: '/home',
    name: AppRoutes.home.name,
    builder: (context, state) => const Home(),
  )
]);
