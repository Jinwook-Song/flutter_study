import 'package:community_domain/domain.dart';
import 'package:core_util/util.dart';

class CreatePostUseCasae implements IUseCase<Post, CreatePostParams> {
  final IWriteRepository _writeRepository;

  CreatePostUseCasae(this._writeRepository);

  @override
  Future<Post> execute([CreatePostParams? params]) {
    final CreatePostParams input = params ?? const CreatePostParams();
    return _writeRepository.createPost(
      channel: input.channel,
      title: input.title,
      content: input.content,
    );
  }
}

class CreatePostParams {
  final String channel;
  final String title;
  final String content;

  const CreatePostParams({
    this.channel = '',
    this.title = '',
    this.content = '',
  });
}
