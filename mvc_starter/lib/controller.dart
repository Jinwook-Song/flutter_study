import 'package:mvc_starter/model.dart';

class CounterController {
  final CounterModel _counterModel;
  CounterController(this._counterModel);

  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counterModel.increment();
    _update();
  }

  void decrement() {
    _counterModel.decrement();
    _update();
  }

  void _update() {
    _counter = _counterModel.counter;
  }
}

class CounterModeController {
  final CouterModeModel _couterModeModel;
  CounterModeController(this._couterModeModel);

  CounterMode _counterMode = CounterMode.plus;
  CounterMode get counterMode => _counterMode;

  void toggleMode() {
    _couterModeModel.toggleMode();
    _update();
  }

  void _update() {
    _counterMode = _couterModeModel.counterMode;
  }
}
