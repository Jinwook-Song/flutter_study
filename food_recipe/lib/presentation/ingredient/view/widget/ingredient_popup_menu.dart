import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class IngredientPopupMenu extends StatelessWidget {
  const IngredientPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_horiz,
        size: 24,
      ),
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.share, size: 20),
                Gap(16),
                Text(
                  'Share',
                  style: TextStyles.smallTextRegular,
                ),
              ],
            ),
          ),
          const PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.star, size: 20),
                Gap(16),
                Text(
                  'Rate Recipe',
                  style: TextStyles.smallTextRegular,
                ),
              ],
            ),
          ),
          const PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.comment, size: 20),
                Gap(16),
                Text(
                  'Review',
                  style: TextStyles.smallTextRegular,
                ),
              ],
            ),
          ),
          const PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.bookmark, size: 20),
                Gap(16),
                Text(
                  'Unsave',
                  style: TextStyles.smallTextRegular,
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
