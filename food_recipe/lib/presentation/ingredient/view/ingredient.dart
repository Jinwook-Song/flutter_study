import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/core/presentation/component/ingredient_recipe_card.dart';
import 'package:food_recipe/presentation/ingredient/ingredient.dart';
import 'package:food_recipe/ui/ui.dart';

class IngredientScreen extends StatelessWidget {
  final int recipeId;
  const IngredientScreen({super.key, required this.recipeId});

  @override
  Widget build(BuildContext context) {
    final provider = getIt.get<IngredientProvider>();
    provider.onAction(IngredientAction.loadRecipe(recipeId));
    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        if (provider.state.recipe == null) {
          return const Material(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
        return IngredientView(
          state: provider.state,
          action: provider.onAction,
        );
      },
    );
  }
}

class IngredientView extends StatelessWidget {
  final IngredientState state;
  final void Function(IngredientAction) action;
  const IngredientView({
    super.key,
    required this.state,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    final recipe = state.recipe!;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            IngredientRecipeCard(
              recipe,
              aspectRatio: 315 / 150,
              onBookmarkTap: (recipe) {},
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(5),
                Expanded(
                  flex: 6,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold,
                  ),
                ),
                const Gap(18),
                Expanded(
                  flex: 3,
                  child: Text(
                    '(13k Reviews)',
                    textAlign: TextAlign.end,
                    style: TextStyles.smallTextRegular
                        .copyWith(color: AppColors.gray3),
                  ),
                ),
                const Gap(5),
              ],
            ),
            const Gap(10),
            const ChefProfile(),
            const Gap(20),
            const CustomTabBar(
              padding: EdgeInsets.zero,
              labels: [
                'Ingrident',
                'Procedure',
              ],
            ),
            const Gap(35),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.cookie,
                  size: 17,
                  color: AppColors.gray3,
                ),
                const Gap(5),
                Text(
                  '1 serve',
                  style: TextStyles.smallTextRegular.copyWith(
                    color: AppColors.gray3,
                  ),
                ),
                const Spacer(),
                Text(
                  '10 Items',
                  style: TextStyles.smallTextRegular.copyWith(
                    color: AppColors.gray3,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) => const IngredientTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
