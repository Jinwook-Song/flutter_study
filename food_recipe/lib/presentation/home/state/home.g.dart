// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      isLoading: json['isLoading'] as bool,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => $enumDecode(_$HomeCategoryEnumMap, e))
          .toList(),
      selectedCategory:
          $enumDecode(_$HomeCategoryEnumMap, json['selectedCategory']),
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'categories':
          instance.categories.map((e) => _$HomeCategoryEnumMap[e]!).toList(),
      'selectedCategory': _$HomeCategoryEnumMap[instance.selectedCategory]!,
      'dishes': instance.dishes,
    };

const _$HomeCategoryEnumMap = {
  RecipeCategory.all: 'all',
  RecipeCategory.indian: 'indian',
  RecipeCategory.asian: 'asian',
  RecipeCategory.chinese: 'chinese',
  RecipeCategory.italian: 'italian',
};
