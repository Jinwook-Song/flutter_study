import 'package:core_util/util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default('') String id,
    @Default('') String imageUrl,
    @Default('') String channel,
    @Default('') String company,
    @Default('') String title,
    @Default('') String content,
    @Default([]) List<String> thumbnailUrls,
    @Default(false) bool isLike,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int viewCount,
    @JsonKey(fromJson: msToDateTimeDefaultToday) //
    required DateTime createdAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
// class PostEntity {
//   final String id;
//   final String imageUrl;
//   final String channel;
//   final String company;
//   final String title;
//   final String content;
//   final List<String> thumbnailUrls;
//   final bool isLike;
//   final int likeCount;
//   final int commentCount;
//   final int viewCount;
//   final DateTime createdAt;

//   PostEntity({
//     required this.id,
//     required this.imageUrl,
//     required this.channel,
//     required this.company,
//     required this.title,
//     required this.content,
//     required this.thumbnailUrls,
//     required this.isLike,
//     required this.likeCount,
//     required this.commentCount,
//     required this.viewCount,
//     required this.createdAt,
//   });
// }
