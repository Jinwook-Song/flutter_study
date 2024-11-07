import 'package:tool_clind_network/network.dart';

abstract class IProfileRemoteDataSource {
  Future<dynamic> getMe();
}

class ProfileRemoteDataSource extends IProfileRemoteDataSource {
  final ProfileApi _api;

  ProfileRemoteDataSource(this._api);

  @override
  Future<dynamic> getMe() {
    return _api.getMe();
  }
}
