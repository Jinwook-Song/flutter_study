import 'package:fast_app_base/screen/main/tab/tab_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentTabProvider extends Notifier<TabItem> {
  final tabs = TabItem.values;

  @override
  TabItem build() {
    return TabItem.home;
  }

  setCurrentTab(int index) {
    state = tabs[index];
  }
}

final currentTabProvider =
    NotifierProvider<CurrentTabProvider, TabItem>(CurrentTabProvider.new);
