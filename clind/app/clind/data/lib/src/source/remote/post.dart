import 'package:tool_clind_network/network.dart';

abstract class IPostRemoteDataSource {
  Future<dynamic> getChannels();
}

class PostRemoteDataSource extends IPostRemoteDataSource {
  final PostApi _api;

  PostRemoteDataSource(this._api);

  @override
  Future getChannels() {
    return _api.getChannels();
  }
}
