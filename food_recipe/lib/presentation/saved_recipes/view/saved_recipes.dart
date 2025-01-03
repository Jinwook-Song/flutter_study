import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/presentation.dart';
import 'package:food_recipe/ui/ui.dart';

final _getSavedRecipesUseCase = GetSavedRecipesUseCase(
  recipeRepository: MockRecipeRepositoryImpl(MockRemoteRecipeDataSourceImpl()),
  bookmarkRepository: MockBookmarkRepositoryImpl(),
);

class SavedRecipesScreen extends StatelessWidget {
  const SavedRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = SavedRecipesProvider(
      getSavedRecipesUseCase: _getSavedRecipesUseCase,
    );

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

        return SavedRecipesView(recipes: state.recipes);
      },
    );
  }
}

class SavedRecipesView extends StatelessWidget {
  final List<Recipe> recipes;

  const SavedRecipesView({super.key, required this.recipes});

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
            return RecipeCard(
              recipe,
              aspectRatio: 315 / 150,
            );
          },
        ),
      ),
    );
  }
}
