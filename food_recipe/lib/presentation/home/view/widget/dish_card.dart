import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/ui/ui.dart';

class DishCard extends StatelessWidget {
  final Recipe dish;
  final bool isBookmarked;
  const DishCard({super.key, required this.dish, required this.isBookmarked});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 176 + 55,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 150,
              height: 176,
              decoration: BoxDecoration(
                color: AppColors.gray4,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.center,
              child: Text(
                dish.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyles.smallTextBold,
              ),
            ),
          ),
          CircleAvatar(
            radius: 55,
            backgroundColor: AppColors.gray3,
            foregroundImage: NetworkImage(dish.image),
          ),
          Positioned(
            top: 26,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.secondary20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.secondary100,
                    size: 10,
                  ),
                  Text(
                    '${dish.rating}',
                    style: TextStyles.smallerTextRegular,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: AppColors.gray3,
                  ),
                ),
                const Gap(5),
                Text(
                  dish.time,
                  style: TextStyles.smallerTextBold.copyWith(
                    color: AppColors.gray1,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: Icon(
                Icons.bookmark_outline,
                color: isBookmarked ? AppColors.primary100 : AppColors.gray3,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
