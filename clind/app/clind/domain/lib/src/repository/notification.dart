import 'package:domain/src/entity/notification.dart';

abstract class INotificationRepository {
  Future<List<ClindNotification>> getNotifications();
}
