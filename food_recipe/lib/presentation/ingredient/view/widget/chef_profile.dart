import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class ChefProfile extends StatelessWidget {
  const ChefProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        radius: 20,
      ),
      title: const Text(
        'Laura wilson',
        style: TextStyles.smallTextBold,
      ),
      subtitle: Text(
        'Lagos, Nigeria',
        style: TextStyles.smallerTextRegular.copyWith(
          color: AppColors.gray3,
        ),
      ),
      trailing: SizedBox(
        width: 85,
        child: PrimaryButton(
          text: 'Follow',
          buttonPadding: 0,
          onTap: () {},
        ),
      ),
    );
  }
}
