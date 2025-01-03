import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';

class MockRecentSearchRecipeImpl implements RecentSearchRecipeRepository {
  final LocalRecipeDataSourece _localRecipeDataSourece;

  MockRecentSearchRecipeImpl(this._localRecipeDataSourece);

  @override
  Future<List<Recipe>> getRecentSearchRecipes() async {
    final List<dynamic> jsonList =
        await _localRecipeDataSourece.getRecentSearchRecipes();
    return jsonList.map((recipe) => Recipe.fromJson(recipe)).toList();
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) {
    // TODO: implement updateRecentSearchRecipes
    throw UnimplementedError();
  }
}
