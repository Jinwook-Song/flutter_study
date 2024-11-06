import 'package:tool_clind_network/network.dart';

class PostApi {
  final ClindRestClient _client;

  PostApi(this._client);

  Future<dynamic> getChannels() {
    return _client.get('/post-api/channels').then((value) => value.data);
  }
}
