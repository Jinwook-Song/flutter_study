import '../domain.dart';

class SaveCalculatorUsecase
    implements UseCase<void, SaveCalculatorUsecaseParams> {
  final CalculatorRepository _calculatorRepository;

  SaveCalculatorUsecase(this._calculatorRepository);

  @override
  Future<void> execute([SaveCalculatorUsecaseParams? params]) async {
    if (params == null) return;
    return _calculatorRepository.save(params.entity);
  }
}

class SaveCalculatorUsecaseParams {
  final CalculatorEntity entity;

  SaveCalculatorUsecaseParams({required this.entity});
}
