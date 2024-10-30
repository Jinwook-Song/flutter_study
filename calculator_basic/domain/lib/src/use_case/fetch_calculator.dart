import '../domain.dart';

class FetchCalculatorUsecase implements UseCase<CalculatorEntity, void> {
  final CalculatorRepository _calculatorRepository;

  FetchCalculatorUsecase(this._calculatorRepository);

  @override
  Future<CalculatorEntity> execute([void params]) {
    return _calculatorRepository.fetch();
  }
}
