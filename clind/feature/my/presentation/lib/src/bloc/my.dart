import 'package:core_bloc/bloc.dart';
import 'package:my_domain/domain.dart';

class MyCubit extends IFlowCubit<User> {
  final GetMy2UseCasae _getMy2UseCasae;

  MyCubit(this._getMy2UseCasae);

  Future<void> load() async {
    emitLoading();

    try {
      final User user = await _getMy2UseCasae.execute();
      emitData(user);
    } catch (e, s) {
      emitError(e, s);
    }
  }
}
