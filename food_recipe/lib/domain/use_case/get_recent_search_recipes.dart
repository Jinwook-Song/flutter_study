import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetRecentSearchRecipesUseCase implements UseCase<List<Recipe>, void> {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  GetRecentSearchRecipesUseCase(this._recentSearchRecipeRepository);
  @override
  Future<List<Recipe>> execute([void params]) {
    return _recentSearchRecipeRepository.getRecentSearchRecipes();
  }
}
