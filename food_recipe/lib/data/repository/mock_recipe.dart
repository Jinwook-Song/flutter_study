import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  final RemoteRecipeDataSource _remoteRecipeDataSource;
  final LocalRecipeDataSource _localRecipeDataSource;

  MockRecipeRepositoryImpl(
      {required RemoteRecipeDataSource remoteRecipeDataSource,
      required LocalRecipeDataSource localRecipeDataSource})
      : _remoteRecipeDataSource = remoteRecipeDataSource,
        _localRecipeDataSource = localRecipeDataSource;

  @override
  Future<Recipe?> getRecipeById({required int id}) async {
    final recipes = await getRecipes();
    return recipes.where((recipe) => recipe.id == id).firstOrNull;
  }

  @override
  Future<List<Recipe>> getRecipes() async {
    final List<dynamic> recipes = await _remoteRecipeDataSource.getRecipes();
    return recipes.map((recipe) => Recipe.fromJson(recipe)).toList();
  }

  @override
  Future<List<Recipe>> getRecipesWithQuery(String query, Filter filter) async {
    final recipes = await getRecipes();

    final results = recipes
        .where(
            (recipe) => recipe.name.toLowerCase().contains(query.toLowerCase()))
        .where((recipe) => recipe.rating >= filter.rate)
        .where(
      (recipe) {
        if (filter.category == CategoryFilter.all) return true;
        return recipe.category.toLowerCase().contains(
              filter.category.name.toLowerCase(),
            );
      },
    ).toList();

    await _localRecipeDataSource
        .updateRecentSearchRecipes(results.map((e) => e.toJson()).toList());

    return results;
  }

  @override
  Future<List<Recipe>> getRecipesWithCategory(RecipeCategory category) async {
    final recipes = await getRecipes();
    if (category == RecipeCategory.all) return recipes;
    return recipes
        .where((recipe) => recipe.category.toLowerCase() == category.name)
        .toList();
  }
}
