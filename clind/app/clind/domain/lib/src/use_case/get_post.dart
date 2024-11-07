import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetPostUseCasae implements IUseCase<Post, GetPostParams> {
  final IPostRepository _postRepository;

  GetPostUseCasae(this._postRepository);

  @override
  Future<Post> execute([GetPostParams? params]) async {
    if (params == null) return Post.empty();
    return _postRepository.getPost(id: params.id);
  }
}

class GetPostParams {
  final String id;

  const GetPostParams({required this.id});
}
