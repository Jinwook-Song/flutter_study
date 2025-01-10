import 'package:food_recipe/domain/model/procedure.dart';

abstract interface class ProcedureRepository {
  Future<List<Procedure>> getProcedures();
  Future<List<Procedure>> getProceduresById({required int recipeId});
}
