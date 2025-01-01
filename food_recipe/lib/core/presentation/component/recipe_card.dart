import 'package:flutter/material.dart';
import 'package:food_recipe/domain/model/model.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 315 / 150,
            child: Image.network(
              recipe.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: TextStyles.smallTextBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'By ${recipe.chef}',
                    style: TextStyles.smallerTextRegular.copyWith(
                      color: AppColors.gray4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.timer_outlined,
                  color: AppColors.white,
                  size: 17,
                ),
                const Gap(5),
                Text(
                  recipe.time,
                  style: TextStyles.smallTextRegular.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const Gap(10),
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                  ),
                  child: const Icon(
                    Icons.bookmark_border_outlined,
                    size: 16,
                    color: AppColors.primary80,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.secondary20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: AppColors.rating,
                  ),
                  const Gap(2),
                  Text(
                    '${recipe.rating}',
                    style: TextStyles.smallerTextRegular,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
