import 'package:core_util/util.dart';
import 'package:community_domain/domain.dart';

class GetMyUseCasae implements IUseCase<User, void> {
  final IWriteRepository _writeRepository;

  GetMyUseCasae(this._writeRepository);

  @override
  Future<User> execute([void params]) {
    return _writeRepository.getMy();
  }
}
