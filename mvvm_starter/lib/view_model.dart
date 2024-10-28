import 'package:flutter/material.dart';
import 'package:mvvm_starter/model.dart';

class CounterViewModel {
  final CounterModel _counterModel;
  CounterViewModel(this._counterModel);

  final ValueNotifier<int> _counter = ValueNotifier(0);
  ValueNotifier<int> get counter => _counter;

  void increment() {
    _counterModel.increment();
    _update();
  }

  void decrement() {
    _counterModel.decrement();
    _update();
  }

  void _update() {
    _counter.value = _counterModel.counter;
  }
}

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
