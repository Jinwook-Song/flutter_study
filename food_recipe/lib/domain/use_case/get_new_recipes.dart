import 'package:food_recipe/core/domain/domain.dart';
import 'package:food_recipe/core/domain/error/network.dart';
import 'package:food_recipe/core/util/util.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recipe.dart';

class GetNewRecipesUseCase
    implements UseCase<Result<List<Recipe>, CustomError>, void> {
  final RecipeRepository _recipeRepository;

  GetNewRecipesUseCase({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository;

  @override
  Future<Result<List<Recipe>, CustomError>> execute([void params]) async {
    try {
      final results = await _recipeRepository.getRecipes();
      return Result.data(results.skip(3).take(4).toList());
    } catch (_) {
      return const Result.error(NetworkError.noInternet);
    }
  }
}
