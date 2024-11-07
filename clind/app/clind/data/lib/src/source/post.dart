import 'package:data/data.dart';

class PostDataSource {
  final IPostRemoteDataSource _postRemoteDataSource;

  PostDataSource(
    this._postRemoteDataSource,
  );

  Future<dynamic> getPost({
    required String id,
  }) async {
    return await _postRemoteDataSource.getPost(id: id);
  }
}
