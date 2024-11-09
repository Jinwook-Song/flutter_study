import 'package:core_util/util.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    @Default('') String id,
    @Default('') String title,
    @Default('') String content,
    @Default('') String route,
    @JsonKey(fromJson: msToDateTimeDefaultToday) required DateTime createdAt,
    @Default(NotificationType.unknown) NotificationType type,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@JsonEnum()
enum NotificationType {
  @JsonValue('ALARM')
  alarm,
  @JsonValue('NOTICE')
  notice,
  unknown;
}
