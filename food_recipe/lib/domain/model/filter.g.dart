// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterImpl _$$FilterImplFromJson(Map<String, dynamic> json) => _$FilterImpl(
      time: $enumDecode(_$TimeFilterEnumMap, json['time']),
      rate: (json['rate'] as num).toInt(),
      category: $enumDecode(_$CategoryFilterEnumMap, json['category']),
    );

Map<String, dynamic> _$$FilterImplToJson(_$FilterImpl instance) =>
    <String, dynamic>{
      'time': _$TimeFilterEnumMap[instance.time]!,
      'rate': instance.rate,
      'category': _$CategoryFilterEnumMap[instance.category]!,
    };

const _$TimeFilterEnumMap = {
  TimeFilter.all: 'all',
  TimeFilter.newest: 'newest',
  TimeFilter.oldest: 'oldest',
  TimeFilter.popularity: 'popularity',
};

const _$CategoryFilterEnumMap = {
  CategoryFilter.all: 'all',
  CategoryFilter.cereal: 'cereal',
  CategoryFilter.vegetables: 'vegetables',
  CategoryFilter.dinner: 'dinner',
  CategoryFilter.chinese: 'chinese',
  CategoryFilter.localDish: 'localDish',
  CategoryFilter.fruit: 'fruit',
  CategoryFilter.breakFast: 'breakFast',
  CategoryFilter.spanish: 'spanish',
  CategoryFilter.lunch: 'lunch',
};
