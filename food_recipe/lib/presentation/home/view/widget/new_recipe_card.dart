import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/ui/ui.dart';

class NewRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const NewRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251,
      height: 127 + 20,
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            child: Container(
              width: 251,
              height: 95,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.gray4,
                    blurRadius: 20,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Text(
                      recipe.name,
                      style: TextStyles.smallTextBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      for (var _ in [1, 2, 3, 4, 5])
                        const Icon(
                          Icons.star,
                          color: AppColors.rating,
                          size: 12,
                        )
                    ],
                  ),
                  const Gap(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 12.5,
                      ),
                      const Gap(8),
                      Text(
                        recipe.chef,
                        style: TextStyles.smallTextRegular.copyWith(
                          color: AppColors.gray3,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.alarm,
                        color: AppColors.gray4,
                        size: 17,
                      ),
                      const Gap(5),
                      Text(
                        recipe.time,
                        style: TextStyles.smallTextRegular.copyWith(
                          color: AppColors.gray3,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 9.3,
            child: CircleAvatar(
              radius: 43,
              backgroundColor: AppColors.gray3,
              foregroundImage: NetworkImage(recipe.image),
            ),
          ),
        ],
      ),
    );
  }
}
