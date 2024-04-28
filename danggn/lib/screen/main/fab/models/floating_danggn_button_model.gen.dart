import 'package:freezed_annotation/freezed_annotation.dart';

part 'floating_danggn_button_model.gen.freezed.dart';
part 'floating_danggn_button_model.gen.g.dart';

@freezed
class FloatingDanggnButtonState with _$FloatingDanggnButtonState {
  factory FloatingDanggnButtonState({
    required bool isExpanded,
    required bool isSmall,
  }) = _FloatingDanggnButtonState;

  factory FloatingDanggnButtonState.fromJson(Map<String, dynamic> json) =>
      _$FloatingDanggnButtonStateFromJson(json);
}
