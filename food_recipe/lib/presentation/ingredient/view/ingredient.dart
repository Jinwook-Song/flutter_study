import 'package:flutter/material.dart';
import 'package:food_recipe/core/di/di.dart';
import 'package:food_recipe/presentation/ingredient/ingredient.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('ingredient'),
      ),
    );
  }
}
