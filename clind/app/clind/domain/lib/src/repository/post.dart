import 'package:domain/src/entity/entity.dart';

abstract class IPostRepository {
  Future<Post> getPost({required String id});
}
