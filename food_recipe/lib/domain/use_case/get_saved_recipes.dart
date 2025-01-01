import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetSavedRecipesUseCase implements UseCase<List<Recipe>, void> {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  GetSavedRecipesUseCase(
      {required RecipeRepository recipeRepository,
      required BookmarkRepository bookmarkRepository})
      : _recipeRepository = recipeRepository,
        _bookmarkRepository = bookmarkRepository;

  @override
  Future<List<Recipe>> execute([void params]) async {
    final ids = await _bookmarkRepository.getBookmarkIds();
    final recipes = await _recipeRepository.getRecipes();
    return recipes.where((recipe) => ids.contains(recipe.id)).toList();
  }
}
