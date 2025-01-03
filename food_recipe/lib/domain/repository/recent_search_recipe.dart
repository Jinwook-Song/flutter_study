import 'package:food_recipe/domain/domain.dart';

abstract interface class RecentSearchRecipeRepository {
  Future<List<Recipe>> getRecentSearchRecipes();

  Future<void> updateRecentSearchRecipes(List<Recipe> recipes);
}
