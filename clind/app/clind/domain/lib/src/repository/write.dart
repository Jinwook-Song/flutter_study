import 'package:domain/src/entity/entity.dart';

abstract class IWriteRepository {
  Future<Post> createPost({
    required String channel,
    required String title,
    required String content,
  });

  Future<User> getMe();
}
