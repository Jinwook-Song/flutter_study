import 'package:food_recipe/domain/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipes.freezed.dart';

@freezed
sealed class SavedRecipesAction with _$SavedRecipesAction {
  const factory SavedRecipesAction.dismissBookmark(Recipe recipe) =
      DismissBookmark;
  const factory SavedRecipesAction.onRecipeTap(Recipe recipe) = OnRecipeTap;
}
