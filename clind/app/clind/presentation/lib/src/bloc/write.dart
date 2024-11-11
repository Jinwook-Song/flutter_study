import 'package:core_bloc/bloc.dart';
import 'package:domain/domain.dart';

class WritePostCubit extends IFlowCubit<Post> {
  final CreatePostUseCasae _createPostUseCasae;

  WritePostCubit(this._createPostUseCasae);

  Future<void> load() async {
    final Post value = Post.empty();
    emitData(value);
  }

  void update({
    String? channel,
    String? title,
    String? content,
  }) {
    if (state.data == null) return;

    final Post prevData = state.data!;
    final Post updatedData = prevData.copyWith(
      channel: channel ?? prevData.channel,
      title: title ?? prevData.title,
      content: content ?? prevData.content,
    );

    emitData(updatedData);
  }

  Future<void> publish() async {
    if (state.data == null) return;

    emitLoading();

    try {
      final CreatePostParams params = CreatePostParams(
        channel: state.data!.channel,
        title: state.data!.title,
        content: state.data!.content,
      );

      final Post value = await _createPostUseCasae.execute(params);
      emitData(value);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}

class WriteMeCubit extends IFlowCubit<User> {
  final GetMyUseCasae _getMeUseCasae;

  WriteMeCubit(this._getMeUseCasae);

  Future<void> load() async {
    emitLoading();
    try {
      final User value = await _getMeUseCasae.execute();
      emitData(value);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
