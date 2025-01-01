import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  final _mockRecipe = MockData.recipe;
  @override
  Future<Recipe?> getRecipeById({required int id}) async {
    final recipes = await getRecipes();
    return recipes.where((recipe) => recipe.id == id).firstOrNull;
  }

  @override
  Future<List<Recipe>> getRecipes() async {
    final List<dynamic> recipes = _mockRecipe['recipes']!;
    return recipes.map((recipe) => Recipe.fromJson(recipe)).toList();
  }
}
