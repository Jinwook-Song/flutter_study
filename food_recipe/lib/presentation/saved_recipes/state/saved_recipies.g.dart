// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_recipies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedRecipiesStateImpl _$$SavedRecipiesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedRecipiesStateImpl(
      isLoading: json['isLoading'] as bool,
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SavedRecipiesStateImplToJson(
        _$SavedRecipiesStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'recipes': instance.recipes.map((e) => e.toJson()).toList(),
    };
