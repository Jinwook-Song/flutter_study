import 'package:data/data.dart';
import 'package:domain/domain.dart';

class WriteRepository implements IWriteRepository {
  final WriteDataSource _writeDataSource;

  WriteRepository(this._writeDataSource);

  @override
  Future<User> getMe() async {
    final dynamic json = await _writeDataSource.getMe();
    return User.fromJson(json);
  }
}
