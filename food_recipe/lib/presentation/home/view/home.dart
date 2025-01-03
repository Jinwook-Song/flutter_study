import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onSearchTap;
  const HomeScreen({super.key, required this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello Jega',
                      style: TextStyles.largeTextBold,
                    ),
                    const Gap(5),
                    Text(
                      'What are you cooking today?',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: AppColors.gray3,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondary40),
                  child: Image.asset(
                    'assets/images/profile.png',
                  ),
                )
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: onSearchTap,
                    child: const SearchInputField(
                      placeholder: 'Search recipe',
                      readOnly: true,
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary100),
                    child: const Icon(
                      Icons.tune_outlined,
                      color: AppColors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
