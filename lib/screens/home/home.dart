import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mythika/routing/app_routes.dart';
import 'package:mythika/services/shared_prefs.dart';
import 'package:mythika/shared/functions/snackbar.dart';
import 'package:mythika/widgets/background_gradient.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Mythika'),
        actions: [
          IconButton(
            onPressed: () async {
              final goRouter = GoRouter.of(context);
              if (await SharedPrefs.logout()) {
                goRouter.goNamed(AppRoutes.splash.name);
              } else {
                showSnackBar('Error Logging out!');
              }
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: BackgroundGradient(
        child: Container(),
      ),
    );
  }
}
