import 'package:data/src/source/remote/remote.dart';

class SearchDataSource {
  final IPostRemoteDataSource _postRemoteDataSource;

  SearchDataSource(this._postRemoteDataSource);

  Future<dynamic> getPopularChannels() async {
    return _postRemoteDataSource.getPopularChannels();
  }

  Future<dynamic> getSearchPosts({
    String query = '',
    int? take,
    int? page,
  }) async {
    return await _postRemoteDataSource.getSearchPosts(
      query: query,
      take: take,
      page: page,
    );
  }
}
