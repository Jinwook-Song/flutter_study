import 'dart:io';

import 'package:food_recipe/core/domain/domain.dart';
import 'package:food_recipe/core/domain/error/network.dart';
import 'package:food_recipe/core/util/util.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recipe.dart';

class GetRecipiesWithCategoryUseCase
    implements UseCase<Result<List<Recipe>, CustomError>, RecipeCategory> {
  final RecipeRepository _recipeRepository;

  GetRecipiesWithCategoryUseCase(this._recipeRepository);

  @override
  Future<Result<List<Recipe>, CustomError>> execute(
      [RecipeCategory? params]) async {
    try {
      final input = params ?? RecipeCategory.all;
      return Result.data(await _recipeRepository.getRecipesWithCategory(input));
    } on SocketException catch (_) {
      return const Result.error(NetworkError.noInternet);
    } catch (_) {
      return const Result.error(NetworkError.unknwon);
    }
  }
}
