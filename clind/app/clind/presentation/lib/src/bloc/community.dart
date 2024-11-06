import 'package:core_bloc/bloc.dart';
import 'package:domain/domain.dart';

class CommunityChannelListCubit extends IFlowCubit<List<Channel>> {
  final GetChannelsUseCase _getChannelsUseCase;

  CommunityChannelListCubit(this._getChannelsUseCase);

  Future<void> load({bool forceUpdate = false}) async {
    if (state is IdleState || forceUpdate) emitLoading();

    try {
      final List<Channel> data = await _getChannelsUseCase.execute();
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class CommunityPopularChannelListCubit extends IFlowCubit<List<Channel>> {
  final GetPopularChannelsUseCase _getPopularChannelsUseCase;

  CommunityPopularChannelListCubit(this._getPopularChannelsUseCase);

  Future<void> load({bool forceUpdate = false}) async {
    if (state is IdleState || forceUpdate) emitLoading();

    try {
      final List<Channel> data = await _getPopularChannelsUseCase.execute();
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class CommunityPostListCubit extends IFlowCubit<List<Post>> {
  final GetPostsUseCase _getPostsUseCase;

  CommunityPostListCubit(this._getPostsUseCase);

  final int _take = 10;

  int get _page {
    if (state.data == null) return 0;
    return state.data!.length ~/ _take;
  }

  Future<void> load({bool forceUpdate = false}) async {
    if (state is IdleState || forceUpdate) emitLoading();

    try {
      final GetPostsParams params = GetPostsParams(take: _take);
      final List<Post> data = await _getPostsUseCase.execute(params);
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }

  Future<void> loadMore({bool forceUpdate = false}) async {
    if (state is IdleState || forceUpdate) emitLoading();

    try {
      final GetPostsParams params = GetPostsParams(take: _take, page: _page);
      final List<Post> data = await _getPostsUseCase.execute(params);
      final List<Post> result = [...state.data!, ...data];
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class CommunityPoPularPostListCubit extends IFlowCubit<List<Post>> {
  final GetPostsUseCase _getPostsUseCase;

  CommunityPoPularPostListCubit(this._getPostsUseCase);

  final int _take = 10;

  int get _page {
    if (state.data == null) return 0;
    return state.data!.length ~/ _take;
  }

  Future<void> load({bool forceUpdate = false}) async {
    if (state is IdleState || forceUpdate) emitLoading();

    try {
      final GetPostsParams params = GetPostsParams(take: _take);
      final List<Post> data = await _getPostsUseCase.execute(params);
      final List<Post> result = List.from(data)..shuffle();
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }

  Future<void> loadMore() async {
    emitLoadMore();

    try {
      final GetPostsParams params = GetPostsParams(take: _take, page: _page);
      final List<Post> data = await _getPostsUseCase.execute(params);
      final List<Post> result = [...state.data!, ...data];
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
