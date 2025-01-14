import 'package:food_recipe/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<RecipeCategory> categories,
    required RecipeCategory selectedCategory,
    required List<Recipe> dishes,
    required List<Recipe> newRecipes,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      categories: RecipeCategory.values,
      selectedCategory: RecipeCategory.all,
      dishes: [],
      newRecipes: [],
    );
  }

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
