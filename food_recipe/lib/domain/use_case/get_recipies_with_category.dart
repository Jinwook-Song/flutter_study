import 'dart:io';

import 'package:food_recipe/core/domain/domain.dart';
import 'package:food_recipe/core/domain/error/network.dart';
import 'package:food_recipe/core/util/util.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/bookmark.dart';
import 'package:food_recipe/domain/repository/recipe.dart';

class GetRecipiesWithCategoryUseCase
    implements UseCase<Result<List<Recipe>, CustomError>, RecipeCategory> {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  GetRecipiesWithCategoryUseCase(
      {required RecipeRepository recipeRepository,
      required BookmarkRepository bookmarkRepository})
      : _recipeRepository = recipeRepository,
        _bookmarkRepository = bookmarkRepository;

  @override
  Future<Result<List<Recipe>, CustomError>> execute(
      [RecipeCategory? params]) async {
    try {
      final input = params ?? RecipeCategory.all;
      final ids = await _bookmarkRepository.getBookmarkIds();
      final recipes = await _recipeRepository.getRecipesWithCategory(input);
      return Result.data(recipes.map((e) {
        if (ids.contains(e.id)) {
          return e.copyWith(isBookmarked: true);
        } else {
          return e;
        }
      }).toList());
    } on SocketException catch (_) {
      return const Result.error(NetworkError.noInternet);
    } catch (_) {
      return const Result.error(NetworkError.unknwon);
    }
  }
}
