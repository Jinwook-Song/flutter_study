import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
sealed class FlowState<DataT> with _$FlowState<DataT> {
  const factory FlowState.idle({DataT? data}) = IdleState<DataT>;
  const factory FlowState.loading({DataT? data}) = LoadingState<DataT>;
  const factory FlowState.loadMore({DataT? data}) = LoadMoreState<DataT>;
  const factory FlowState.empty({DataT? data}) = EmptyState<DataT>;
  const factory FlowState.data({
    required DataT data,
    DateTime? updatedAt,
  }) = DataState<DataT>;
  const factory FlowState.error({
    DataT? data,
    dynamic error,
    StackTrace? stackTrace,
  }) = ErrorState<DataT>;
}
