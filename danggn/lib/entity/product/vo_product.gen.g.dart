// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_product.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      name: json['name'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.normal,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'user': instance.user,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'status': _$ProductStatusEnumMap[instance.status]!,
      'images': instance.images,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.normal: 'normal',
  ProductStatus.booked: 'booked',
  ProductStatus.complete: 'complete',
};
