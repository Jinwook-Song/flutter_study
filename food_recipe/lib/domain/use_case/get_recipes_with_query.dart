import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetRecipesWithQueryUseCase
    implements UseCase<List<Recipe>, GetRecipesWithQueryParams> {
  final RecipeRepository _recipeRepository;
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  GetRecipesWithQueryUseCase(
      {required RecipeRepository recipeRepository,
      required RecentSearchRecipeRepository recentSearchRecipeRepository})
      : _recipeRepository = recipeRepository,
        _recentSearchRecipeRepository = recentSearchRecipeRepository;

  @override
  Future<List<Recipe>> execute([GetRecipesWithQueryParams? params]) async {
    final GetRecipesWithQueryParams input =
        params ?? GetRecipesWithQueryParams();
    final recipes = await _recipeRepository.getRecipesWithQuery(input.query);
    await _recentSearchRecipeRepository.updateRecentSearchRecipes(recipes);
    return recipes;
  }
}

class GetRecipesWithQueryParams {
  final String query;

  GetRecipesWithQueryParams({
    this.query = '',
  });
}
