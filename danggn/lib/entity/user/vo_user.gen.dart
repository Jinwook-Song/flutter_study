import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_user.gen.freezed.dart';
part 'vo_user.gen.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String nickname,
    required double temperature,
    required String avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
