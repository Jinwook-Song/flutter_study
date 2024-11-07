import 'package:tool_clind_network/network.dart';

class ProfileApi {
  final ClindRestClient _client;

  ProfileApi(this._client);

  Future<dynamic> getMe() {
    return _client
        .get<dynamic>('/post-api/profile/my')
        .then((value) => value.data);
  }
}
