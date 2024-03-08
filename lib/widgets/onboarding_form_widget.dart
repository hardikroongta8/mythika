import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mythika/models/onboarding_form_item.dart';
import 'package:mythika/routing/app_routes.dart';
import 'package:mythika/shared/colors.dart';
import 'package:mythika/shared/styles.dart';

class OnboardingFormWidget extends StatelessWidget {
  final PageController pageController;
  final OnboardingFormItem item;
  final int currentIndex;
  final bool isLastItem;

  const OnboardingFormWidget(
      {required this.currentIndex,
      required this.pageController,
      required this.isLastItem,
      required this.item,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            item.question,
            style: MyStyles.kTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...item.options.map((option) => GestureDetector(
                    onTap: () {
                      if (isLastItem) {
                        context.goNamed(AppRoutes.home.name);
                      }
                      pageController.animateToPage(currentIndex + 1,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn);
                    },
                    child: Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(
                          bottom: 20, right: 30, left: 30),
                      decoration: BoxDecoration(
                        color: MyColors.textFieldFillColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Center(
                          child: Text(
                            option,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  )),
              currentIndex == 0
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(currentIndex - 1,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: MyColors.transparentButtonColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
            ],
          )
        ],
      ),
    );
  }
}
