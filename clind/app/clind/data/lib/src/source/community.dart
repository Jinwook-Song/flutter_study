import 'package:data/data.dart';

class CommunityDataSource {
  final IPostRemoteDataSource _remoteDataSource;

  CommunityDataSource(this._remoteDataSource);

  Future<dynamic> getChannels() async {
    return await _remoteDataSource.getChannels();
  }

  Future<dynamic> getPopularChannels() async {
    return await _remoteDataSource.getPopularChannels();
  }

  Future<dynamic> getPosts({int? take, int? page}) {
    return _remoteDataSource.getPosts(take: take, page: page);
  }
}
