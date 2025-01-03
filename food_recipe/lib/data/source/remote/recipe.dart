import 'package:food_recipe/data/data.dart';

abstract interface class RemoteRecipeDataSourece {
  Future<dynamic> getRecipes();
}

class MockRemoteRecipeDataSourceImpl implements RemoteRecipeDataSourece {
  @override
  Future getRecipes() async {
    await Future.delayed(const Duration(seconds: 2));
    return MockRemoteData.recipe['recipes'];
  }
}
