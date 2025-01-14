import 'package:food_recipe/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';

@freezed
sealed class IngredientAction with _$IngredientAction {
  const factory IngredientAction.onBookmarkTap(Recipe recipe) = OnBookmarkTap;
  const factory IngredientAction.onIngredientTap(Recipe recipe) =
      OnIngredientTap;
  const factory IngredientAction.onProcedureTap(int recipeId) = OnProcedureTap;
  const factory IngredientAction.onFollowTap(Recipe recipe) = OnFollowTap;
  const factory IngredientAction.loadRecipe(int recipeId) = LoadRecipe;
}
