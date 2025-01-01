import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/component/recipe_card.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class SavedRecipesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  const SavedRecipesScreen({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Saved recipes",
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView.separated(
          itemCount: recipes.length,
          separatorBuilder: (context, index) => const Gap(20),
          itemBuilder: (context, index) {
            final recipe = recipes[index];
            return RecipeCard(recipe);
          },
        ),
      ),
    );
  }
}
