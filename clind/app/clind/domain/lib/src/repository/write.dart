import 'package:domain/src/entity/entity.dart';

abstract class IWriteRepository {
  Future<User> getMe();
}
