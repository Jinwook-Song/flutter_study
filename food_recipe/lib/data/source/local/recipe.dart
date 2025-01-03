import 'package:food_recipe/data/data.dart';

abstract interface class LocalRecipeDataSourece {
  Future<dynamic> getRecentSearchRecipes();
}

class MockLocalRecipeDataSourceImpl implements LocalRecipeDataSourece {
  @override
  Future getRecentSearchRecipes() async {
    await Future.delayed(const Duration(seconds: 2));
    return MockLocalData.recipe['recipes']!.sublist(2, 6);
  }
}
