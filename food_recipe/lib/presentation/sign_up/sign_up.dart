import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onSignInTap;
  final VoidCallback onSignUpTap;

  const SignUpScreen({
    super.key,
    required this.onSignInTap,
    required this.onSignUpTap,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          reverse: true,
          children: [
            const Gap(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: TextStyles.largeTextBold,
                ),
                Gap(5),
                Text(
                  'Let’s help you set up your account,\nit won’t take long.',
                  style: TextStyles.smallTextRegular,
                )
              ],
            ),
            const Gap(20),
            const InputField(label: 'Name', placeholder: 'Enter Name'),
            const Gap(20),
            const InputField(label: 'Email', placeholder: 'Enter Email'),
            const Gap(20),
            const InputField(label: 'Password', placeholder: 'Enter Password'),
            const Gap(20),
            const InputField(
                label: 'Confirm Password', placeholder: 'Retype Password'),
            const Gap(20),
            Row(
              children: [
                Checkbox.adaptive(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: const BorderSide(
                    color: AppColors.secondary100,
                    width: 1,
                  ),
                  activeColor: AppColors.secondary100,
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Accept terms & Condition',
                  style: TextStyles.smallerTextRegular
                      .copyWith(color: AppColors.secondary100),
                ),
              ],
            ),
            const Gap(25),
            PrimaryButton.big(text: 'Sign Up', onTap: widget.onSignUpTap),
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
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already a member? ",
                  style: TextStyles.smallerTextRegular,
                ),
                GestureDetector(
                  onTap: widget.onSignInTap,
                  child: Text(
                    'Sign In',
                    style: TextStyles.smallerTextBold
                        .copyWith(color: AppColors.secondary100),
                  ),
                ),
              ],
            ),
          ].reversed.toList(),
        ),
      )),
    );
  }
}
