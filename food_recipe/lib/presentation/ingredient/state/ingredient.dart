import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/domain/model/ingredient.dart';
import 'package:food_recipe/domain/model/procedure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
class IngredientState with _$IngredientState {
  const factory IngredientState({
    required List<Ingredient> ingredients,
    required List<Procedure> procedures,
    required Recipe? recipe,
  }) = _IngredientState;

  factory IngredientState.initial() {
    return const IngredientState(
      ingredients: [],
      procedures: [],
      recipe: null,
    );
  }

  factory IngredientState.fromJson(Map<String, dynamic> json) =>
      _$IngredientStateFromJson(json);
}
