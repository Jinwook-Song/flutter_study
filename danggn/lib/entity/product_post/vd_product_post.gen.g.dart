// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vd_product_post.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPost _$$_ProductPostFromJson(Map<String, dynamic> json) =>
    _$_ProductPost(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      content: json['content'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      chatCount: json['chatCount'] as int,
      likeCount: json['likeCount'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ProductPostToJson(_$_ProductPost instance) =>
    <String, dynamic>{
      'user': instance.user,
      'product': instance.product,
      'content': instance.content,
      'address': instance.address,
      'chatCount': instance.chatCount,
      'likeCount': instance.likeCount,
      'createdAt': instance.createdAt.toIso8601String(),
    };
