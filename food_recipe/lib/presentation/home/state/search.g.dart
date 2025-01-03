// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStateImpl _$$SearchStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchStateImpl(
      isLoading: json['isLoading'] as bool,
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchStateImplToJson(_$SearchStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'recipes': instance.recipes.map((e) => e.toJson()).toList(),
    };
