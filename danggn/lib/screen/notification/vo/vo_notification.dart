import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class DanggnNotification {
  DanggnNotification({
    required this.type,
    required this.title,
    required this.description,
    required this.time,
    this.isRead = false,
  });

  final NotificationType type;
  final String title;
  final String description;
  final DateTime time;
  bool isRead;
}
