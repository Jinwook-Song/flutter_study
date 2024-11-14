import 'package:tool_clind_network/network.dart';

abstract class INotificationRemoteDataSource {
  Future<dynamic> getNotifications();
}

class NotificationRemoteDataSource implements INotificationRemoteDataSource {
  final NotificationApi _notificationApi;

  NotificationRemoteDataSource(this._notificationApi);

  @override
  Future<dynamic> getNotifications() {
    return _notificationApi.getNotifications();
  }
}
