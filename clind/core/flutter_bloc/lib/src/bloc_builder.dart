import 'package:core_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'internal.dart';

class FlowBlocBuilder<BlocT extends BlocBase<FlowState<DataT>>, DataT>
    extends BlocBuilder<BlocT, FlowState<DataT>> {
  const FlowBlocBuilder({
    required super.builder,
    super.key,
    super.bloc,
    super.buildWhen,
  });

  factory FlowBlocBuilder.when({
    Key? key,
    BlocT? bloc,
    BlocWidgetBuilder<IdleState<DataT>>? idle,
    BlocWidgetBuilder<LoadingState<DataT>>? loading,
    BlocWidgetBuilder<LoadMoreState<DataT>>? loadMore,
    BlocWidgetBuilder<EmptyState<DataT>>? empty,
    BlocWidgetBuilder<DataState<DataT>>? data,
    BlocWidgetBuilder<ErrorState<DataT>>? error,
    BlocWidgetBuilder<FlowState<DataT>>? orElse,
    BlocBuilderCondition<FlowState<DataT>>? buildWhen,
  }) {
    return FlowBlocBuilder<BlocT, DataT>(
      key: key,
      bloc: bloc,
      builder: InteralFlowBlocBuilder.when(
        idle: idle,
        loading: loading,
        loadMore: loadMore,
        empty: empty,
        data: data,
        error: error,
        orElse: orElse,
      ),
      buildWhen: buildWhen,
    );
  }
}
