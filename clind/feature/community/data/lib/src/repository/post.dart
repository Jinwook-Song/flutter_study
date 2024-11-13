import 'package:community_data/data.dart';
import 'package:community_domain/domain.dart';

class PostRepository implements IPostRepository {
  final PostDataSource _postDataSource;

  PostRepository(this._postDataSource);

  @override
  Future<Post> getPost({required String id}) async {
    final dynamic json = await _postDataSource.getPost(id: id);
    return Post.fromJson(json);
  }

  @override
  Future<List<Comment>> getComments({
    required String postId,
    int take = 10,
    int page = 0,
  }) async {
    final List<dynamic> jsonList = await _postDataSource.getComments(
      postId: postId,
      take: take,
      page: page,
    );
    return jsonList.map((json) => Comment.fromJson(json)).toList();
  }
}
