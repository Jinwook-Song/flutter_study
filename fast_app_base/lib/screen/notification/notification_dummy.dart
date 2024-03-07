import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final List<TossNotification> notificationDummies = [
  TossNotification(
    type: NotificationType.tossPay,
    description: '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    time: DateTime.now().subtract(27.minutes),
  ),
  TossNotification(
    type: NotificationType.stock,
    description: '인적분할에 대해 알려드릴게요.',
    time: DateTime.now().subtract(1.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '1000걸음 이상 걸었다면 포인트 받으세요.',
    time: DateTime.now().subtract(7.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.moneyTip,
    description: '유럽 식품 물가가 치솟고 있어요.\n송OO님, 유럽여행에 관심이 있다면 확인해보세요.',
    time: DateTime.now().subtract(33.minutes),
  ),
  TossNotification(
    type: NotificationType.walk,
    description: '오늘 100걸음을 넘겼어요. 포인트를 받아보세요.',
    time: DateTime.now().subtract(2.days),
  ),
  TossNotification(
    type: NotificationType.luck,
    description: '6월 5일, 행운복권이 도착했어요.',
    time: DateTime.now().subtract(11.hours),
    isRead: true,
  ),
  TossNotification(
    type: NotificationType.people,
    description: '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    time: DateTime.now().subtract(30.seconds),
  ),
];
