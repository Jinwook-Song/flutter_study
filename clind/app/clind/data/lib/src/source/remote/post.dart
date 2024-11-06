import 'package:tool_clind_network/network.dart';

abstract class IPostRemoteDataSource {
  Future<dynamic> getChannels();
  Future<dynamic> getPopularChannels();
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
}
