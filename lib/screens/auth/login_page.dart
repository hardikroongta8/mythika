import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mythika/models/user_info.dart';
import 'package:mythika/routing/app_routes.dart';
import 'package:mythika/services/shared_prefs.dart';
import 'package:mythika/shared/colors.dart';
import 'package:mythika/shared/functions/snackbar.dart';
import 'package:mythika/shared/styles.dart';
import 'package:mythika/widgets/background_gradient.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (emailController.text.isEmpty) {
            showSnackBar('Please enter your email.');
            return;
          } else if (pinController.text.isEmpty) {
            showSnackBar('Please enter your pin.');
            return;
          }
          final goRouter = GoRouter.of(context);
          await SharedPrefs.storeUserInfo(UserInfo(
              email: emailController.text.trim(), pin: pinController.text));
          goRouter.goNamed(AppRoutes.onboarding.name);
        },
        elevation: 0,
        backgroundColor: MyColors.transparentButtonColor,
        child: const Icon(Icons.arrow_forward_rounded),
      ),
      body: BackgroundGradient(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Mythika", style: MyStyles.kHeadingTextStyle),
                Form(
                    child: Column(
                  children: [
                    const Text(
                      "Log in",
                      style: MyStyles.kTextStyle,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: MyStyles.textFieldInputDecoration
                          .copyWith(hintText: 'E-mail ID'),
                    ),
                    const SizedBox(height: 19),
                    TextFormField(
                      controller: pinController,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: MyStyles.textFieldInputDecoration
                          .copyWith(hintText: 'PIN'),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
