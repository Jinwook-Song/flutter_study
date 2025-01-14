import 'package:food_recipe/data/data.dart';

abstract interface class RemoteRecipeDataSource {
  Future<dynamic> getRecipes();
  Future<dynamic> getIngredients();
  Future<dynamic> getProcedures();
}

class MockRemoteRecipeDataSourceImpl implements RemoteRecipeDataSource {
  @override
  Future getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return MockRemoteData.recipe['recipes'];
  }

  @override
  Future getIngredients() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return MockRemoteData.ingredients['ingredients'];
  }

  @override
  Future getProcedures() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return MockRemoteData.procedures['procedures'];
  }
}
