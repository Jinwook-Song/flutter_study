import 'package:calculator_basic/data/data.dart';
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
    await _saveCalculatorUsecase.execute(value);
  }

  void calculate(String buttonText) {
    value.calculate(buttonText);
    notifyListeners();
  }
}

class FetchCalculatorUsecase {
  Future<CalculatorEntity> execute() async {
    return CalculatorRepository(
            CalculatorDataSource(CalculatorLocalDataSource()))
        .fetch();
  }
}

class SaveCalculatorUsecase {
  Future<void> execute(CalculatorEntity entity) async {
    return CalculatorRepository(
            CalculatorDataSource(CalculatorLocalDataSource()))
        .save(entity);
  }
}
