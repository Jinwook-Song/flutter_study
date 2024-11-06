import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    @Default('') String id,
    @Default('') String imageUrl,
    @Default('') String name,
    @Default(0) int followCount,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

// class ChannelEntitiy {
//   final String id;
//   final String imageUrl;
//   final String name;
//   final int followCount;

//   ChannelEntitiy({
//     required this.id,
//     required this.imageUrl,
//     required this.name,
//     required this.followCount,
//   });
// }
