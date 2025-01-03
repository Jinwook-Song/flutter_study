import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';

class SearchInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String placeholder;
  final bool autofocus;
  const SearchInputField({
    super.key,
    this.controller,
    required this.placeholder,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        controller: controller,
        autofocus: autofocus,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          prefixIcon: const Icon(Icons.search, color: AppColors.gray4),
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
    );
  }
}
