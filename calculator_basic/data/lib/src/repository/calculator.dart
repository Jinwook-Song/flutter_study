import 'package:calculator_basic_domain/domain.dart';

import '../data.dart';

class CalculatorRepositoryImpl implements CalculatorRepository {
  final CalculatorDataSource _calculatorDataSource;

  CalculatorRepositoryImpl(this._calculatorDataSource);

  @override
  Future<CalculatorEntity> fetch() async {
    final CalculatorModel model = await _calculatorDataSource.fetch();
    return model.toEntity();
  }

  @override
  Future<void> save(CalculatorEntity entity) {
    return _calculatorDataSource.save(entity.toModel());
  }
}

extension on CalculatorModel {
  CalculatorEntity toEntity() {
    return CalculatorEntity(
      result: result,
    );
  }
}

extension on CalculatorEntity {
  CalculatorModel toModel() {
    return CalculatorModel(
      result: result,
    );
  }
}
