import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  final RemoteRecipeDataSourece _remoteRecipeDataSourece;

  MockRecipeRepositoryImpl(this._remoteRecipeDataSourece);

  @override
  Future<Recipe?> getRecipeById({required int id}) async {
    final recipes = await getRecipes();
    return recipes.where((recipe) => recipe.id == id).firstOrNull;
  }

  @override
  Future<List<Recipe>> getRecipes() async {
    final List<dynamic> recipes = await _remoteRecipeDataSourece.getRecipes();
    return recipes.map((recipe) => Recipe.fromJson(recipe)).toList();
  }

  @override
  Future<List<Recipe>> getRecipesWithQuery(String query) async {
    final recipes = await getRecipes();
    return recipes
        .where(
            (recipe) => recipe.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
