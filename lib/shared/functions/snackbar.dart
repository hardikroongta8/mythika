import 'package:flutter/material.dart';
import 'package:mythika/main.dart';

void showSnackBar(String message) {
  rootScaffoldMessengerKey.currentState?.clearSnackBars();
  rootScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
    backgroundColor: Colors.black,
    content: Text(message),
    duration: const Duration(seconds: 1),
  ));
}
