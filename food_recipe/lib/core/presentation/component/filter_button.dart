import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool selected;
  const FilterButton(
    this.text, {
    super.key,
    this.icon,
    this.selected = false,
  });

  Color get _bgColor => selected ? AppColors.primary100 : AppColors.white;

  Color get _borderColor =>
      selected ? AppColors.primary100 : AppColors.primary80;

  Color get _contentColor => selected ? AppColors.white : AppColors.primary80;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: _bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: _borderColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyles.smallTextRegular.copyWith(
                color: _contentColor,
              ),
            ),
            if (icon != null) ...[
              const Gap(5),
              Icon(
                icon,
                size: 18,
                color: _contentColor,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
