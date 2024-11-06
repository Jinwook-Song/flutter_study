import 'package:core_bloc/bloc.dart';
import 'package:domain/domain.dart';

class CommunityChannelListCubit extends IFlowCubit<List<Channel>> {
  final GetChannelsUseCase _getChannelsUseCase;

  CommunityChannelListCubit(this._getChannelsUseCase);

  Future<void> load() async {
    emitLoading();

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

  Future<void> load() async {
    emitLoading();

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

  Future<void> load() async {
    emitLoading();

    try {
      final List<Post> data = await _getPostsUseCase.execute();
      emitData(data);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class CommunityPoPularPostListCubit extends IFlowCubit<List<Post>> {
  final GetPostsUseCase _getPostsUseCase;

  CommunityPoPularPostListCubit(this._getPostsUseCase);

  Future<void> load() async {
    emitLoading();

    try {
      final List<Post> data = await _getPostsUseCase.execute();
      final List<Post> result = List.from(data)..shuffle();
      emitData(result);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
