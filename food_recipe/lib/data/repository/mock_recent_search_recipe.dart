import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';

class MockRecentSearchRecipeRepositoryImpl
    implements RecentSearchRecipeRepository {
  final LocalRecipeDataSource _localRecipeDataSourece;

  MockRecentSearchRecipeRepositoryImpl(
      {required LocalRecipeDataSource localRecipeDataSourece})
      : _localRecipeDataSourece = localRecipeDataSourece;

  @override
  Future<List<Recipe>> getRecentSearchRecipes() async {
    final List<dynamic> jsonList =
        await _localRecipeDataSourece.getRecentSearchRecipes();
    return jsonList.map((recipe) => Recipe.fromJson(recipe)).toList();
  }
}
