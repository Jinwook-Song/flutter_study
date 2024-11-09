import 'package:data/data.dart';
import 'package:domain/domain.dart';

class NotificationRepository implements INotificationRepository {
  final NotificationDataSource _notificationDataSource;

  NotificationRepository(this._notificationDataSource);

  @override
  Future<List<Notification>> getNotifications() async {
    final List<dynamic> jsonList =
        await _notificationDataSource.getNotifications();
    return jsonList.map((json) => Notification.fromJson(json)).toList();
  }
}
