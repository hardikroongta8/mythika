import 'package:flutter/material.dart';
import 'package:mythika/main.dart';
import 'package:mythika/routing/router.dart';
import 'package:mythika/shared/colors.dart';

class MythikaApp extends StatelessWidget {
  const MythikaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: MyColors.themeColor,
        useMaterial3: false,
      ),
      routerConfig: goRouter,
    );
  }
}
