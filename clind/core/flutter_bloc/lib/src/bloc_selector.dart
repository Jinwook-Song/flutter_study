import 'package:core_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlowBlocSelector<BlocT extends BlocBase<FlowState<DataT>>, DataT,
    Selector> extends BlocSelector<BlocT, FlowState<DataT>, Selector> {
  const FlowBlocSelector({
    required super.selector,
    required super.builder,
    super.key,
    super.bloc,
  });
}
