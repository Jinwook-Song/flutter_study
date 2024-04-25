import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notification1 = DanggnNotification(
  type: NotificationType.official,
  title: '4월 가계부가 도착했어요.',
  description: '#당근 #당근가계부',
  time: DateTime.now().subtract(3.hours),
);
final notification2 = DanggnNotification(
  type: NotificationType.official,
  title: '당근페이 전자금융거래 이용약관 계정 안내',
  description: '#당근 #당근가계부',
  time: DateTime.now().subtract(3.hours),
);
final notification3 = DanggnNotification(
  type: NotificationType.official,
  title: '지금 새로워진 당근을 만나보세요',
  description: '#당근 #당근가계부',
  time: DateTime.now().subtract(3.hours),
);
final notification4 = DanggnNotification(
  type: NotificationType.official,
  title: '가족집수리',
  description: '#당근 #당근가계부',
  time: DateTime.now().subtract(3.hours),
);

final notificationList = [
  notification1,
  notification2,
  notification3,
  notification4,
];
