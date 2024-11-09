import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetNotificationsUsecase implements IUseCase<List<Notification>, void> {
  final INotificationRepository _notificationRepository;

  GetNotificationsUsecase(this._notificationRepository);

  @override
  Future<List<Notification>> execute([void params]) {
    return _notificationRepository.getNotifications();
  }
}
