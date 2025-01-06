// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      isLoading: json['isLoading'] as bool,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => $enumDecode(_$RecipeCategoryEnumMap, e))
          .toList(),
      selectedCategory:
          $enumDecode(_$RecipeCategoryEnumMap, json['selectedCategory']),
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'categories':
          instance.categories.map((e) => _$RecipeCategoryEnumMap[e]!).toList(),
      'selectedCategory': _$RecipeCategoryEnumMap[instance.selectedCategory]!,
      'dishes': instance.dishes,
    };

const _$RecipeCategoryEnumMap = {
  RecipeCategory.all: 'all',
  RecipeCategory.indian: 'indian',
  RecipeCategory.asian: 'asian',
  RecipeCategory.chinese: 'chinese',
  RecipeCategory.italian: 'italian',
};
