import 'package:flutter/material.dart';
import 'package:food_recipe/domain/model/model.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class IngredientRecipeCard extends StatelessWidget {
  final Recipe recipe;
  final double aspectRatio;
  final bool showBottomRight;
  final void Function(Recipe recipe) onBookmarkTap;
  const IngredientRecipeCard(
    this.recipe, {
    super.key,
    required this.aspectRatio,
    this.showBottomRight = true,
    required this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: aspectRatio,
            child: Image.network(
              recipe.image,
              fit: BoxFit.cover,
            ),
          ),
          if (showBottomRight)
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
                  GestureDetector(
                    onTap: () => onBookmarkTap(recipe),
                    child: Container(
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
