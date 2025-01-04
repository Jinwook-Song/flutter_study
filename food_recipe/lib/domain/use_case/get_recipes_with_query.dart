import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetRecipesWithQueryUseCase
    implements UseCase<List<Recipe>, GetRecipesWithQueryParams> {
  final RecipeRepository _recipeRepository;

  GetRecipesWithQueryUseCase(this._recipeRepository);

  @override
  Future<List<Recipe>> execute([GetRecipesWithQueryParams? params]) {
    final GetRecipesWithQueryParams input =
        params ?? GetRecipesWithQueryParams();
    return _recipeRepository.getRecipesWithQuery(input.query);
  }
}

class GetRecipesWithQueryParams {
  final String query;

  GetRecipesWithQueryParams({
    this.query = '',
  });
}
