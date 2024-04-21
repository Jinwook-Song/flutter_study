// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fast_app_base/screen/main/fab/models/floating_danggn_button_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingButtonStateProvider extends Notifier<FloatingDanggnButtonState> {
  @override
  FloatingDanggnButtonState build() {
    return FloatingDanggnButtonState(
      isExpanded: false,
      isSmall: false,
    );
  }

  bool _needToRestore = false;

  void toggleMenu() {
    final prevState = state;
    state = state.copyWith(
      isExpanded: !state.isExpanded,
      isSmall: _needToRestore ? false : true,
    );

    if (_needToRestore) {
      _needToRestore = false;
    }

    if (!prevState.isSmall && !prevState.isExpanded) {
      _needToRestore = true;
    }
  }

  void changeSmallSize(bool isSmall) {
    state = state.copyWith(isSmall: isSmall);
  }
}

final floatingButtonStateProvider =
    NotifierProvider<FloatingButtonStateProvider, FloatingDanggnButtonState>(
  FloatingButtonStateProvider.new,
);
