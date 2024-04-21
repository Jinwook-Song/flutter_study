// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floating_danggn_button_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FloatingDanggnButtonState _$FloatingDanggnButtonStateFromJson(
    Map<String, dynamic> json) {
  return _FloatingDanggnButtonState.fromJson(json);
}

/// @nodoc
mixin _$FloatingDanggnButtonState {
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isSmall => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloatingDanggnButtonStateCopyWith<FloatingDanggnButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloatingDanggnButtonStateCopyWith<$Res> {
  factory $FloatingDanggnButtonStateCopyWith(FloatingDanggnButtonState value,
          $Res Function(FloatingDanggnButtonState) then) =
      _$FloatingDanggnButtonStateCopyWithImpl<$Res, FloatingDanggnButtonState>;
  @useResult
  $Res call({bool isExpanded, bool isSmall});
}

/// @nodoc
class _$FloatingDanggnButtonStateCopyWithImpl<$Res,
        $Val extends FloatingDanggnButtonState>
    implements $FloatingDanggnButtonStateCopyWith<$Res> {
  _$FloatingDanggnButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isSmall = null,
  }) {
    return _then(_value.copyWith(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmall: null == isSmall
          ? _value.isSmall
          : isSmall // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FloatingDanggnButtonStateCopyWith<$Res>
    implements $FloatingDanggnButtonStateCopyWith<$Res> {
  factory _$$_FloatingDanggnButtonStateCopyWith(
          _$_FloatingDanggnButtonState value,
          $Res Function(_$_FloatingDanggnButtonState) then) =
      __$$_FloatingDanggnButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExpanded, bool isSmall});
}

/// @nodoc
class __$$_FloatingDanggnButtonStateCopyWithImpl<$Res>
    extends _$FloatingDanggnButtonStateCopyWithImpl<$Res,
        _$_FloatingDanggnButtonState>
    implements _$$_FloatingDanggnButtonStateCopyWith<$Res> {
  __$$_FloatingDanggnButtonStateCopyWithImpl(
      _$_FloatingDanggnButtonState _value,
      $Res Function(_$_FloatingDanggnButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isSmall = null,
  }) {
    return _then(_$_FloatingDanggnButtonState(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmall: null == isSmall
          ? _value.isSmall
          : isSmall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloatingDanggnButtonState implements _FloatingDanggnButtonState {
  _$_FloatingDanggnButtonState(
      {required this.isExpanded, required this.isSmall});

  factory _$_FloatingDanggnButtonState.fromJson(Map<String, dynamic> json) =>
      _$$_FloatingDanggnButtonStateFromJson(json);

  @override
  final bool isExpanded;
  @override
  final bool isSmall;

  @override
  String toString() {
    return 'FloatingDanggnButtonState(isExpanded: $isExpanded, isSmall: $isSmall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FloatingDanggnButtonState &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isSmall, isSmall) || other.isSmall == isSmall));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isExpanded, isSmall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FloatingDanggnButtonStateCopyWith<_$_FloatingDanggnButtonState>
      get copyWith => __$$_FloatingDanggnButtonStateCopyWithImpl<
          _$_FloatingDanggnButtonState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloatingDanggnButtonStateToJson(
      this,
    );
  }
}

abstract class _FloatingDanggnButtonState implements FloatingDanggnButtonState {
  factory _FloatingDanggnButtonState(
      {required final bool isExpanded,
      required final bool isSmall}) = _$_FloatingDanggnButtonState;

  factory _FloatingDanggnButtonState.fromJson(Map<String, dynamic> json) =
      _$_FloatingDanggnButtonState.fromJson;

  @override
  bool get isExpanded;
  @override
  bool get isSmall;
  @override
  @JsonKey(ignore: true)
  _$$_FloatingDanggnButtonStateCopyWith<_$_FloatingDanggnButtonState>
      get copyWith => throw _privateConstructorUsedError;
}
