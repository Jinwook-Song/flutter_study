// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procedure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProcedureImpl _$$ProcedureImplFromJson(Map<String, dynamic> json) =>
    _$ProcedureImpl(
      recipeId: (json['recipeId'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ProcedureImplToJson(_$ProcedureImpl instance) =>
    <String, dynamic>{
      'recipeId': instance.recipeId,
      'name': instance.name,
      'image': instance.image,
    };
