// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      chef: json['chef'] as String,
      time: json['time'] as String,
      rating: (json['rating'] as num).toDouble(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'image': instance.image,
      'chef': instance.chef,
      'time': instance.time,
      'rating': instance.rating,
      'ingredients': instance.ingredients.map((e) => e.toJson()).toList(),
    };

_$RecipeIngredientImpl _$$RecipeIngredientImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeIngredientImpl(
      ingredient:
          Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipeIngredientImplToJson(
        _$RecipeIngredientImpl instance) =>
    <String, dynamic>{
      'ingredient': instance.ingredient.toJson(),
      'amount': instance.amount,
    };
