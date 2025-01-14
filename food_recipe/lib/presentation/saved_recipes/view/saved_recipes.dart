import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/presentation.dart';
import 'package:food_recipe/ui/ui.dart';

class SavedRecipesScreen extends StatelessWidget {
  const SavedRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = getIt.get<SavedRecipesProvider>();

    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        final SavedRecipiesState state = provider.state;
        if (state.isLoading) {
          return const Scaffold(
              body: Center(
            child: CircularProgressIndicator.adaptive(),
          ));
        }

        return SavedRecipesView(
          recipes: state.recipes,
          onAction: (action) {
            switch (action) {
              case OnRecipeTap():
                context.pushNamed(
                  Routes.ingredient.name,
                  pathParameters: {'recipeId': '${action.recipe.id}'},
                );
                break;

              case DismissBookmark():
                provider.onAction(action);
                break;
            }
          },
        );
      },
    );
  }
}

class SavedRecipesView extends StatelessWidget {
  final List<Recipe> recipes;
  final void Function(SavedRecipesAction action) onAction;

  const SavedRecipesView({
    super.key,
    required this.recipes,
    required this.onAction,
  });

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
            return GestureDetector(
              onTap: () => onAction(SavedRecipesAction.onRecipeTap(recipe)),
              child: RecipeCard(
                recipe,
                aspectRatio: 315 / 150,
                onBookmarkTap: (recipe) {
                  onAction(SavedRecipesAction.dismissBookmark(recipe));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
