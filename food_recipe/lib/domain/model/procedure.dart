import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure.freezed.dart';
part 'procedure.g.dart';

@freezed
class Procedure with _$Procedure {
  const factory Procedure({
    required int recipeId,
    required String name,
    required String image,
  }) = _Procedure;

  factory Procedure.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFromJson(json);
}
