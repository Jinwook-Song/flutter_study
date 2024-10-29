import 'package:calculator_basic/data/data.dart';

class CalculatorDataSource {
  final CalculatorLocalDataSource _localDataSource;

  CalculatorDataSource(this._localDataSource);

  Future<void> save(CalculatorModel model) {
    return _localDataSource.setString(model.result);
  }

  Future<CalculatorModel> fetch() async {
    final String value = await _localDataSource.getString() ?? '';
    final CalculatorModel model = CalculatorModel(result: value);
    return model;
  }
}
