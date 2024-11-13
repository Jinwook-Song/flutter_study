// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] ?? '',
      postId: json['postId'] ?? '',
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] ?? '',
      createdAt: msToDateTimeDefaultToday((json['createdAt'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'user': instance.user,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
    };
