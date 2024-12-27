import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String placeholder;
  const InputField({
    super.key,
    this.controller,
    required this.label,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyles.smallTextRegular),
        const Gap(5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            hintText: placeholder,
            hintStyle: TextStyles.smallTextRegular.copyWith(
              color: AppColors.gray4,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.error,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.gray4,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.primary80,
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
