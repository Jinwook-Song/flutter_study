import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetMeUseCasae implements IUseCase<User, void> {
  final IWriteRepository _writeRepository;

  GetMeUseCasae(this._writeRepository);

  @override
  Future<User> execute([void params]) {
    return _writeRepository.getMe();
  }
}
