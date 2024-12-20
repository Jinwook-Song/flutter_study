import 'package:core_util/util.dart';
import 'package:my_domain/domain.dart';

class GetMy2UseCasae implements IUseCase<User, void> {
  final IMyRepository _myRepository;

  GetMy2UseCasae(this._myRepository);

  @override
  Future<User> execute([void params]) {
    return _myRepository.getMy();
  }
}
