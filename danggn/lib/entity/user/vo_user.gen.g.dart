// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_user.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'temperature': instance.temperature,
      'avatarUrl': instance.avatarUrl,
    };
