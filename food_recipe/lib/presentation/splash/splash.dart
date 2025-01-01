import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class SplashScreen extends StatelessWidget {
  final VoidCallback onStartTap;
  const SplashScreen({super.key, required this.onStartTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/splash_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 104,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icons/crown_icon.png',
                    width: 79,
                    height: 79,
                  ),
                  const Gap(14),
                  Text(
                    '100K+ Premium Recipe',
                    style: TextStyles.mediumTextBold.copyWith(
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    'Get',
                    style: TextStyles.titleTextBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Cooking',
                    style: TextStyles.titleTextBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    'Simple way to find Tasty Recipe',
                    style: TextStyles.normalTextRegular.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const Gap(64),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 66),
                    child: PrimaryButton.medium(
                      text: 'Start Cooking',
                      onTap: onStartTap,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
