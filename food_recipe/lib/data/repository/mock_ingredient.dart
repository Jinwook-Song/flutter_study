import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/model/ingredient.dart';
import 'package:food_recipe/domain/repository/ingredient.dart';

class MockIngredientRepositoryImpl implements IngredientRepository {
  final RemoteRecipeDataSource _remoteRecipeDataSource;

  MockIngredientRepositoryImpl(
      {required RemoteRecipeDataSource remoteRecipeDataSource})
      : _remoteRecipeDataSource = remoteRecipeDataSource;

  @override
  Future<List<Ingredient>> getIngredients() async {
    final List<dynamic> jsonList =
        await _remoteRecipeDataSource.getIngredients();
    return jsonList.map((e) => Ingredient.fromJson(e)).toList();
  }
}
