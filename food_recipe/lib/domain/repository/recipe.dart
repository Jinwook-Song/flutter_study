import 'package:food_recipe/domain/model/model.dart';

abstract interface class RecipeRepository {
  Future<List<Recipe>> getRecipes();

  Future<Recipe?> getRecipeById({required int id});

  Future<List<Recipe>> getRecipesWithQuery(
    String query,
    Filter filer,
  );

  Future<List<Recipe>> getRecipesWithCategory(
    RecipeCategory category,
  );
}
