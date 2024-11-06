import 'package:data/data.dart';

class CommunityDataSource {
  final IPostRemoteDataSource _remoteDataSource;

  CommunityDataSource(this._remoteDataSource);

  Future<dynamic> getChannels() async {
    return await _remoteDataSource.getChannels();
  }
}
