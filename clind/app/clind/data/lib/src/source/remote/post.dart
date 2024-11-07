import 'package:tool_clind_network/network.dart';

abstract class IPostRemoteDataSource {
  Future<dynamic> getChannels();
  Future<dynamic> getPopularChannels();
  Future<dynamic> getPosts({int? take, int? page});
  Future<dynamic> createPost({
    required String channel,
    required String title,
    required String content,
  });
  Future<dynamic> getPost({required String id});
}

class PostRemoteDataSource extends IPostRemoteDataSource {
  final PostApi _api;

  PostRemoteDataSource(this._api);

  @override
  Future<dynamic> getChannels() {
    return _api.getChannels();
  }

  @override
  Future<dynamic> getPopularChannels() {
    return _api.getPopularChannels();
  }

  @override
  Future<dynamic> getPosts({int? take, int? page}) {
    return _api.getPosts(take: take, page: page);
  }

  @override
  Future createPost(
      {required String channel,
      required String title,
      required String content}) {
    return _api.createPost(
      channel: channel,
      title: title,
      content: content,
    );
  }

  @override
  Future getPost({required String id}) {
    return _api.getPost(id: id);
  }
}
