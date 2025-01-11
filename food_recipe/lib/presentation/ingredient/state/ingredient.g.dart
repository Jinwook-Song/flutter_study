// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientStateImpl _$$IngredientStateImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientStateImpl(
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedures: (json['procedures'] as List<dynamic>)
          .map((e) => Procedure.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipe: json['recipe'] == null
          ? null
          : Recipe.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IngredientStateImplToJson(
        _$IngredientStateImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'procedures': instance.procedures,
      'recipe': instance.recipe,
    };
