import 'package:data/data.dart';

class WriteDataSource {
  final IPostRemoteDataSource _postRemoteDataSource;
  final IProfileRemoteDataSource _profileRemoteDataSource;

  WriteDataSource(
    this._postRemoteDataSource,
    this._profileRemoteDataSource,
  );

  Future<dynamic> createPost({
    required String channel,
    required String title,
    required String content,
  }) async {
    return await _postRemoteDataSource.createPost(
      channel: channel,
      title: title,
      content: content,
    );
  }

  Future<dynamic> getMe() async {
    return await _profileRemoteDataSource.getMe();
  }
}
