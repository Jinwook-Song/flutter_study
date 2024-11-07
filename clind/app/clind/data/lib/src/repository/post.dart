import 'package:data/data.dart';
import 'package:domain/domain.dart';

class PostRepository implements IPostRepository {
  final PostDataSource _postDataSource;

  PostRepository(this._postDataSource);

  @override
  Future<Post> getPost({required String id}) async {
    final dynamic json = await _postDataSource.getPost(id: id);
    return Post.fromJson(json);
  }
}
