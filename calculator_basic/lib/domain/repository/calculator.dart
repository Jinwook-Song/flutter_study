import 'package:calculator_basic/domain/domain.dart';

abstract class CalculatorRepository {
  Future<CalculatorEntity> fetch();
  Future<void> save(CalculatorEntity entity);
}
