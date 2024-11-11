import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetMyUseCasae implements IUseCase<User, void> {
  final IWriteRepository _writeRepository;

  GetMyUseCasae(this._writeRepository);

  @override
  Future<User> execute([void params]) {
    return _writeRepository.getMy();
  }
}

class GetMy2UseCasae implements IUseCase<User, void> {
  final IMyRepository _myRepository;

  GetMy2UseCasae(this._myRepository);

  @override
  Future<User> execute([void params]) {
    return _myRepository.getMy();
  }
}
