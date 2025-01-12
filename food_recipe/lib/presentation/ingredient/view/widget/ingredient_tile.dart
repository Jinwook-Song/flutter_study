import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class IngredientTile extends StatelessWidget {
  const IngredientTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.gray4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.apple),
          ),
          const Gap(16),
          const Text(
            'Tomatos',
            style: TextStyles.normalTextBold,
          ),
          const Spacer(),
          Text(
            '500g',
            style: TextStyles.smallTextRegular.copyWith(
              color: AppColors.gray3,
            ),
          )
        ],
      ),
    );
  }
}
