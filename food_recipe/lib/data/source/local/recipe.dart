import 'package:food_recipe/data/data.dart';

abstract interface class LocalRecipeDataSourece {
  // 최근 검색된 레시피 리스트
  Future<dynamic> getRecentSearchRecipes();
  // 검색된 레시피 리스트 최신화
  Future<void> updateRecentSearchRecipes(List<dynamic> recipes);
}

class MockLocalRecipeDataSourceImpl implements LocalRecipeDataSourece {
  List<dynamic> _data = MockLocalData.recipe['recipes']!.sublist(2, 5);

  @override
  Future getRecentSearchRecipes() async {
    await Future.delayed(const Duration(seconds: 2));
    return _data;
  }

  @override
  Future<void> updateRecentSearchRecipes(List recipes) async {
    _data = recipes;
  }
}
