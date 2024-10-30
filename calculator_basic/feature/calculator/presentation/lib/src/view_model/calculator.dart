import 'package:calculator_basic_domain/domain.dart';
import 'package:flutter/material.dart';

class CalculatorViewModel extends ValueNotifier<CalculatorEntity> {
  final FetchCalculatorUsecase _fetchCalculatorUsecase;
  final SaveCalculatorUsecase _saveCalculatorUsecase;

  CalculatorViewModel(
    this._fetchCalculatorUsecase,
    this._saveCalculatorUsecase,
    super.calculator,
  );

  Future<void> load() async {
    value = await _fetchCalculatorUsecase.execute();
  }

  Future<void> save() async {
    final SaveCalculatorUsecaseParams params =
        SaveCalculatorUsecaseParams(entity: value);
    await _saveCalculatorUsecase.execute(params);
  }

  void calculate(String buttonText) {
    value.calculate(buttonText);
    notifyListeners();
  }
}
