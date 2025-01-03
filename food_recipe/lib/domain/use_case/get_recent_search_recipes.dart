import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';

class GetRecentSearchRecipes implements UseCase<List<Recipe>, void> {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  GetRecentSearchRecipes(this._recentSearchRecipeRepository);
  @override
  Future<List<Recipe>> execute([void params]) {
    return _recentSearchRecipeRepository.getRecentSearchRecipes();
  }
}
