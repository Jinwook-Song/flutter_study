import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetSearchPosts extends IUseCase<List<Post>, GetSearchPostsParams> {
  final ISearchRepository _searchRepository;

  GetSearchPosts(this._searchRepository);

  @override
  Future<List<Post>> execute([GetSearchPostsParams? params]) {
    final GetSearchPostsParams input = params ?? GetSearchPostsParams();

    return _searchRepository.getSearchPost(
      query: input.query,
      take: input.take,
      page: input.page,
    );
  }
}

class GetSearchPostsParams {
  final String query;
  final int take;
  final int page;

  GetSearchPostsParams({
    this.query = '',
    this.take = 10,
    this.page = 0,
  });
}
