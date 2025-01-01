import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          reverse: true,
          children: [
            const Gap(50),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyles.headerTextBold,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyles.largeTextRegular,
                )
              ],
            ),
            const Gap(57),
            const InputField(label: 'Email', placeholder: 'Enter Email'),
            const Gap(30),
            const InputField(
                label: 'Enter Password', placeholder: 'Enter Password'),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Forgot Password?',
                style: TextStyles.smallerTextRegular
                    .copyWith(color: AppColors.secondary100),
              ),
            ),
            const Gap(25),
            PrimaryButton.big(text: 'Sign In', onTap: () {}),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 1,
                  color: AppColors.gray4,
                ),
                const Gap(7),
                Text(
                  'Or Sign in With',
                  style: TextStyles.smallTextRegular
                      .copyWith(color: AppColors.gray4),
                ),
                const Gap(7),
                Container(
                  width: 50,
                  height: 1,
                  color: AppColors.gray4,
                ),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/icons/google_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const Gap(25),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/icons/facebook_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            const Gap(55),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyles.smallerTextRegular,
                ),
                Text(
                  'Sign up',
                  style: TextStyles.smallerTextBold
                      .copyWith(color: AppColors.secondary100),
                ),
              ],
            ),
            const Gap(65),
          ].reversed.toList(),
        ),
      )),
    );
  }
}
