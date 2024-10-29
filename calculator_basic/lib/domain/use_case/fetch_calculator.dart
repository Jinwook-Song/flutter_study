import 'package:calculator_basic/domain/domain.dart';
import 'package:calculator_basic/util/util.dart';

class FetchCalculatorUsecase implements UseCase<CalculatorEntity, void> {
  final CalculatorRepository _calculatorRepository;

  FetchCalculatorUsecase(this._calculatorRepository);

  @override
  Future<CalculatorEntity> execute([void params]) {
    return _calculatorRepository.fetch();
  }
}
