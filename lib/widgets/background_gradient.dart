import 'package:flutter/cupertino.dart';
import 'package:mythika/shared/colors.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;

  const BackgroundGradient({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            MyColors.bgGradientColorDark,
            MyColors.bgGradientColorLight
          ])),
      child: SafeArea(child: child),
    );
  }
}
