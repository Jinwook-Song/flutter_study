import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationEditModeProvider extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  toggleEdit() {
    state = !state;
  }
}

final notificationEditModeProvider =
    NotifierProvider<NotificationEditModeProvider, bool>(
  NotificationEditModeProvider.new,
);
