// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => $enumDecode(_$HomeCategoryEnumMap, e))
          .toList(),
      selectedCategory:
          $enumDecode(_$HomeCategoryEnumMap, json['selectedCategory']),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'categories':
          instance.categories.map((e) => _$HomeCategoryEnumMap[e]!).toList(),
      'selectedCategory': _$HomeCategoryEnumMap[instance.selectedCategory]!,
    };

const _$HomeCategoryEnumMap = {
  HomeCategory.all: 'all',
  HomeCategory.indian: 'indian',
  HomeCategory.asian: 'asian',
  HomeCategory.chinese: 'chinese',
  HomeCategory.italian: 'italian',
};
