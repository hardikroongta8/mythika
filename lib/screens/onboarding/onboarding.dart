import 'package:flutter/material.dart';
import 'package:mythika/shared/constants.dart';
import 'package:mythika/shared/styles.dart';
import 'package:mythika/widgets/background_gradient.dart';
import 'package:mythika/widgets/onboarding_form_widget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text("Mythika", style: MyStyles.kHeadingTextStyle),
              ),
              Builder(builder: (context) {
                List<Widget> pages = [];
                int len = onboardingFormItems.length;
                for (int i = 0; i < len; i++) {
                  pages.add(
                    OnboardingFormWidget(
                      pageController: pageController,
                      currentIndex: i,
                      isLastItem: i == len - 1,
                      item: onboardingFormItems[i],
                    ),
                  );
                }
                return SizedBox(
                  height: 350,
                  child: PageView(
                      padEnds: true,
                      scrollBehavior: const ScrollBehavior().copyWith(
                          physics: const NeverScrollableScrollPhysics()),
                      pageSnapping: true,
                      controller: pageController,
                      children: pages),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
