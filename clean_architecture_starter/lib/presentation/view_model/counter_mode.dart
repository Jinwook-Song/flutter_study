import 'package:clean_architecture_starter/domain/domain.dart';
import 'package:flutter/material.dart';

class CounterModeViewModel {
  final CouterModeModel _couterModeModel;
  CounterModeViewModel(this._couterModeModel);

  final ValueNotifier<CounterMode> _counterMode =
      ValueNotifier(CounterMode.plus);
  ValueNotifier<CounterMode> get counterMode => _counterMode;

  void toggleMode() {
    _couterModeModel.toggleMode();
    _update();
  }

  void _update() {
    _counterMode.value = _couterModeModel.counterMode;
  }
}
