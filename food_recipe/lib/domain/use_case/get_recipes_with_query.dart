import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetRecipesWithQueryUseCase
    implements UseCase<List<Recipe>, GetRecipesWithQueryParams> {
  final RecipeRepository _recipeRepository;

  GetRecipesWithQueryUseCase(
      {required RecipeRepository recipeRepository,
      required RecentSearchRecipeRepository recentSearchRecipeRepository})
      : _recipeRepository = recipeRepository;

  @override
  Future<List<Recipe>> execute([GetRecipesWithQueryParams? params]) async {
    final GetRecipesWithQueryParams input =
        params ?? GetRecipesWithQueryParams();
    final recipes = await _recipeRepository.getRecipesWithQuery(input.query);
    return recipes;
  }
}

class GetRecipesWithQueryParams {
  final String query;

  GetRecipesWithQueryParams({
    this.query = '',
  });
}
