import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/model/procedure.dart';
import 'package:food_recipe/domain/repository/procedure.dart';

class MockProcedureRepositoryImpl implements ProcedureRepository {
  final RemoteRecipeDataSource _remoteRecipeDataSource;

  MockProcedureRepositoryImpl(
      {required RemoteRecipeDataSource remoteRecipeDataSource})
      : _remoteRecipeDataSource = remoteRecipeDataSource;

  @override
  Future<List<Procedure>> getProcedures() async {
    final List<dynamic> jsonList =
        await _remoteRecipeDataSource.getProcedures();
    return jsonList.map((e) => Procedure.fromJson(e)).toList();
  }

  @override
  Future<List<Procedure>> getProceduresById({required int recipeId}) async {
    final List<dynamic> jsonList =
        await _remoteRecipeDataSource.getProcedures();
    return jsonList
        .map((e) => Procedure.fromJson(e))
        .where((e) => e.recipeId == recipeId)
        .toList();
  }
}
