import 'package:bloc/bloc.dart';
import 'package:core_bloc/bloc.dart';

abstract class IFlowCubit<DataT> extends Cubit<FlowState<DataT>>
    with IFlowCubitMixin<DataT> {
  IFlowCubit([FlowState<DataT>? state])
      : super(state ?? const FlowState.idle());
}

mixin IFlowCubitMixin<DataT> on Cubit<FlowState<DataT>> {
  void emitIdle() {
    _emit(FlowState<DataT>.idle(data: state.data));
  }

  void emitLoading() {
    _emit(FlowState<DataT>.loading(data: state.data));
  }

  void emitLoadMore() {
    _emit(FlowState<DataT>.loadMore(data: state.data));
  }

  void emitEmpty() {
    _emit(FlowState<DataT>.empty(data: state.data));
  }

  void emitData(DataT data) {
    _emit(FlowState<DataT>.data(data: data, updatedAt: DateTime.now()));
  }

  void emitError([dynamic error, StackTrace? stackTrace]) {
    _emit(FlowState<DataT>.error(
        data: state.data, error: error, stackTrace: stackTrace));
  }

  void _emit(FlowState<DataT> state) {
    if (isClosed) return;
    emit(state);
  }
}
