import 'package:core_util/util.dart';
import 'package:domain/src/entity/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default('') id,
    @Default('') postId,
    required User user,
    @Default('') content,
    @JsonKey(fromJson: msToDateTimeDefaultToday) required DateTime createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
