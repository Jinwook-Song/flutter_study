import 'package:food_recipe/core/util/util.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/domain/repository/recipe.dart';

class GetRecipiesWithCategoryUseCase
    implements UseCase<List<Recipe>, RecipeCategory> {
  final RecipeRepository _recipeRepository;

  GetRecipiesWithCategoryUseCase(this._recipeRepository);

  @override
  Future<List<Recipe>> execute([RecipeCategory? params]) {
    final input = params ?? RecipeCategory.all;
    return _recipeRepository.getRecipesWithCategory(input);
  }
}
