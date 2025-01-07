import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class ToggleBookmarkRecipeUseCase implements UseCase<List<Recipe>, int> {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  ToggleBookmarkRecipeUseCase({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  })  : _recipeRepository = recipeRepository,
        _bookmarkRepository = bookmarkRepository;

  @override
  Future<List<Recipe>> execute([int? params]) async {
    final input = params!;
    await _bookmarkRepository.toggle(id: input);
    final recipes = await _recipeRepository.getRecipes();
    final ids = await _bookmarkRepository.getBookmarkIds();

    return recipes.map((e) {
      if (ids.contains(e.id)) {
        return e.copyWith(isBookmarked: true);
      } else {
        return e;
      }
    }).toList();
  }
}
