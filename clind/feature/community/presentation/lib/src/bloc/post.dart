import 'package:core_bloc/bloc.dart';
import 'package:community_domain/domain.dart';

class PostCubit extends IFlowCubit<Post> {
  final GetPostUseCase _getPostUseCase;

  PostCubit(this._getPostUseCase);

  Future<void> load({required String postId}) async {
    emitLoading();

    try {
      final GetPostParams params = GetPostParams(postId: postId);
      final data = await _getPostUseCase.execute(params);
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class PostCommentListCubit extends IFlowCubit<List<Comment>> {
  final GetCommentsUseCase _getCommentsUseCase;

  PostCommentListCubit(this._getCommentsUseCase);

  final int _take = 10;

  int get _page {
    if (state.data == null) return 0;
    return state.data!.length ~/ _take;
  }

  Future<void> load({required String postId}) async {
    emitLoading();

    try {
      final GetCommentsParams params = GetCommentsParams(postId: postId);
      final List<Comment> data = await _getCommentsUseCase.execute(params);
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }

  Future<void> loadMore() async {
    emitLoadMore();

    try {
      final GetCommentsParams params = GetCommentsParams(
        postId: state.data!.first.postId,
        take: _take,
        page: _page,
      );
      final List<Comment> data = await _getCommentsUseCase.execute(params);
      final List<Comment> result = [...state.data!, ...data];
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
