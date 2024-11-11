import 'package:domain/domain.dart';

abstract class ISearchRepository {
  Future<List<Channel>> getPopularChannels();
  Future<List<Post>> getSearchPost({
    String query = '',
    int? take,
    int? page,
  });
}
