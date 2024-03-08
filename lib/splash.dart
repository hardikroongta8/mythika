import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mythika/routing/app_routes.dart';
import 'package:mythika/services/shared_prefs.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    SharedPrefs.isLoggedIn().then((isLoggedIn) {
      if (isLoggedIn) {
        context.goNamed(AppRoutes.home.name);
      } else {
        context.goNamed(AppRoutes.loginPage.name);
      }
    }).catchError((err) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(err.toString())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
