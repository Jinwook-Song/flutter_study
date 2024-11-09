import 'package:core_bloc/bloc.dart';
import 'package:domain/domain.dart';

class NotificationListCubit extends IFlowCubit<List<ClindNotification>> {
  final GetNotificationsUsecase _notificationsUsecase;

  NotificationListCubit(this._notificationsUsecase);

  Future<void> load() async {
    emitLoading();

    try {
      final List<ClindNotification> notifications =
          await _notificationsUsecase.execute();
      emitData(notifications);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
