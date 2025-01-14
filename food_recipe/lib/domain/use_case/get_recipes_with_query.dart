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
        params ?? GetRecipesWithQueryParams.initial();
    final recipes = await _recipeRepository.getRecipesWithQuery(
      input.query,
      input.filter,
    );
    return recipes;
  }
}

class GetRecipesWithQueryParams {
  final String query;
  final Filter filter;

  GetRecipesWithQueryParams({
    required this.query,
    required this.filter,
  });

  factory GetRecipesWithQueryParams.initial() {
    return GetRecipesWithQueryParams(query: '', filter: Filter.initial());
  }
}
