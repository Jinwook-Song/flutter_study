// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlowState<DataT> {
  DataT? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowStateCopyWith<DataT, $Res> {
  factory $FlowStateCopyWith(
          FlowState<DataT> value, $Res Function(FlowState<DataT>) then) =
      _$FlowStateCopyWithImpl<DataT, $Res, FlowState<DataT>>;
}

/// @nodoc
class _$FlowStateCopyWithImpl<DataT, $Res, $Val extends FlowState<DataT>>
    implements $FlowStateCopyWith<DataT, $Res> {
  _$FlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<DataT, $Res> {
  factory _$$IdleStateImplCopyWith(_$IdleStateImpl<DataT> value,
          $Res Function(_$IdleStateImpl<DataT>) then) =
      __$$IdleStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT? data});
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$IdleStateImpl<DataT>>
    implements _$$IdleStateImplCopyWith<DataT, $Res> {
  __$$IdleStateImplCopyWithImpl(_$IdleStateImpl<DataT> _value,
      $Res Function(_$IdleStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$IdleStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
    ));
  }
}

/// @nodoc

class _$IdleStateImpl<DataT> implements IdleState<DataT> {
  const _$IdleStateImpl({this.data});

  @override
  final DataT? data;

  @override
  String toString() {
    return 'FlowState<$DataT>.idle(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleStateImplCopyWith<DataT, _$IdleStateImpl<DataT>> get copyWith =>
      __$$IdleStateImplCopyWithImpl<DataT, _$IdleStateImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return idle(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return idle?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState<DataT> implements FlowState<DataT> {
  const factory IdleState({final DataT? data}) = _$IdleStateImpl<DataT>;

  @override
  DataT? get data;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleStateImplCopyWith<DataT, _$IdleStateImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<DataT, $Res> {
  factory _$$LoadingStateImplCopyWith(_$LoadingStateImpl<DataT> value,
          $Res Function(_$LoadingStateImpl<DataT>) then) =
      __$$LoadingStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT? data});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$LoadingStateImpl<DataT>>
    implements _$$LoadingStateImplCopyWith<DataT, $Res> {
  __$$LoadingStateImplCopyWithImpl(_$LoadingStateImpl<DataT> _value,
      $Res Function(_$LoadingStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadingStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl<DataT> implements LoadingState<DataT> {
  const _$LoadingStateImpl({this.data});

  @override
  final DataT? data;

  @override
  String toString() {
    return 'FlowState<$DataT>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<DataT, _$LoadingStateImpl<DataT>> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<DataT, _$LoadingStateImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return loading(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return loading?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<DataT> implements FlowState<DataT> {
  const factory LoadingState({final DataT? data}) = _$LoadingStateImpl<DataT>;

  @override
  DataT? get data;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingStateImplCopyWith<DataT, _$LoadingStateImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreStateImplCopyWith<DataT, $Res> {
  factory _$$LoadMoreStateImplCopyWith(_$LoadMoreStateImpl<DataT> value,
          $Res Function(_$LoadMoreStateImpl<DataT>) then) =
      __$$LoadMoreStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT? data});
}

/// @nodoc
class __$$LoadMoreStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$LoadMoreStateImpl<DataT>>
    implements _$$LoadMoreStateImplCopyWith<DataT, $Res> {
  __$$LoadMoreStateImplCopyWithImpl(_$LoadMoreStateImpl<DataT> _value,
      $Res Function(_$LoadMoreStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadMoreStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
    ));
  }
}

/// @nodoc

class _$LoadMoreStateImpl<DataT> implements LoadMoreState<DataT> {
  const _$LoadMoreStateImpl({this.data});

  @override
  final DataT? data;

  @override
  String toString() {
    return 'FlowState<$DataT>.loadMore(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreStateImplCopyWith<DataT, _$LoadMoreStateImpl<DataT>>
      get copyWith =>
          __$$LoadMoreStateImplCopyWithImpl<DataT, _$LoadMoreStateImpl<DataT>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return loadMore(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return loadMore?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreState<DataT> implements FlowState<DataT> {
  const factory LoadMoreState({final DataT? data}) = _$LoadMoreStateImpl<DataT>;

  @override
  DataT? get data;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreStateImplCopyWith<DataT, _$LoadMoreStateImpl<DataT>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<DataT, $Res> {
  factory _$$EmptyStateImplCopyWith(_$EmptyStateImpl<DataT> value,
          $Res Function(_$EmptyStateImpl<DataT>) then) =
      __$$EmptyStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT? data});
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$EmptyStateImpl<DataT>>
    implements _$$EmptyStateImplCopyWith<DataT, $Res> {
  __$$EmptyStateImplCopyWithImpl(_$EmptyStateImpl<DataT> _value,
      $Res Function(_$EmptyStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$EmptyStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
    ));
  }
}

/// @nodoc

class _$EmptyStateImpl<DataT> implements EmptyState<DataT> {
  const _$EmptyStateImpl({this.data});

  @override
  final DataT? data;

  @override
  String toString() {
    return 'FlowState<$DataT>.empty(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStateImplCopyWith<DataT, _$EmptyStateImpl<DataT>> get copyWith =>
      __$$EmptyStateImplCopyWithImpl<DataT, _$EmptyStateImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return empty(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return empty?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState<DataT> implements FlowState<DataT> {
  const factory EmptyState({final DataT? data}) = _$EmptyStateImpl<DataT>;

  @override
  DataT? get data;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyStateImplCopyWith<DataT, _$EmptyStateImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<DataT, $Res> {
  factory _$$DataStateImplCopyWith(_$DataStateImpl<DataT> value,
          $Res Function(_$DataStateImpl<DataT>) then) =
      __$$DataStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT data, DateTime? updatedAt});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$DataStateImpl<DataT>>
    implements _$$DataStateImplCopyWith<DataT, $Res> {
  __$$DataStateImplCopyWithImpl(_$DataStateImpl<DataT> _value,
      $Res Function(_$DataStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DataStateImpl<DataT> implements DataState<DataT> {
  const _$DataStateImpl({required this.data, this.updatedAt});

  @override
  final DataT data;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FlowState<$DataT>.data(data: $data, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), updatedAt);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<DataT, _$DataStateImpl<DataT>> get copyWith =>
      __$$DataStateImplCopyWithImpl<DataT, _$DataStateImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return data(this.data, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return data?.call(this.data, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataState<DataT> implements FlowState<DataT> {
  const factory DataState(
      {required final DataT data,
      final DateTime? updatedAt}) = _$DataStateImpl<DataT>;

  @override
  DataT get data;
  DateTime? get updatedAt;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataStateImplCopyWith<DataT, _$DataStateImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<DataT, $Res> {
  factory _$$ErrorStateImplCopyWith(_$ErrorStateImpl<DataT> value,
          $Res Function(_$ErrorStateImpl<DataT>) then) =
      __$$ErrorStateImplCopyWithImpl<DataT, $Res>;
  @useResult
  $Res call({DataT? data, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<DataT, $Res>
    extends _$FlowStateCopyWithImpl<DataT, $Res, _$ErrorStateImpl<DataT>>
    implements _$$ErrorStateImplCopyWith<DataT, $Res> {
  __$$ErrorStateImplCopyWithImpl(_$ErrorStateImpl<DataT> _value,
      $Res Function(_$ErrorStateImpl<DataT>) _then)
      : super(_value, _then);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ErrorStateImpl<DataT>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataT?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl<DataT> implements ErrorState<DataT> {
  const _$ErrorStateImpl({this.data, this.error, this.stackTrace});

  @override
  final DataT? data;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'FlowState<$DataT>.error(data: $data, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl<DataT> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error),
      stackTrace);

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<DataT, _$ErrorStateImpl<DataT>> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<DataT, _$ErrorStateImpl<DataT>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataT? data) idle,
    required TResult Function(DataT? data) loading,
    required TResult Function(DataT? data) loadMore,
    required TResult Function(DataT? data) empty,
    required TResult Function(DataT data, DateTime? updatedAt) data,
    required TResult Function(
            DataT? data, dynamic error, StackTrace? stackTrace)
        error,
  }) {
    return error(this.data, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataT? data)? idle,
    TResult? Function(DataT? data)? loading,
    TResult? Function(DataT? data)? loadMore,
    TResult? Function(DataT? data)? empty,
    TResult? Function(DataT data, DateTime? updatedAt)? data,
    TResult? Function(DataT? data, dynamic error, StackTrace? stackTrace)?
        error,
  }) {
    return error?.call(this.data, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataT? data)? idle,
    TResult Function(DataT? data)? loading,
    TResult Function(DataT? data)? loadMore,
    TResult Function(DataT? data)? empty,
    TResult Function(DataT data, DateTime? updatedAt)? data,
    TResult Function(DataT? data, dynamic error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.data, this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleState<DataT> value) idle,
    required TResult Function(LoadingState<DataT> value) loading,
    required TResult Function(LoadMoreState<DataT> value) loadMore,
    required TResult Function(EmptyState<DataT> value) empty,
    required TResult Function(DataState<DataT> value) data,
    required TResult Function(ErrorState<DataT> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleState<DataT> value)? idle,
    TResult? Function(LoadingState<DataT> value)? loading,
    TResult? Function(LoadMoreState<DataT> value)? loadMore,
    TResult? Function(EmptyState<DataT> value)? empty,
    TResult? Function(DataState<DataT> value)? data,
    TResult? Function(ErrorState<DataT> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleState<DataT> value)? idle,
    TResult Function(LoadingState<DataT> value)? loading,
    TResult Function(LoadMoreState<DataT> value)? loadMore,
    TResult Function(EmptyState<DataT> value)? empty,
    TResult Function(DataState<DataT> value)? data,
    TResult Function(ErrorState<DataT> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<DataT> implements FlowState<DataT> {
  const factory ErrorState(
      {final DataT? data,
      final dynamic error,
      final StackTrace? stackTrace}) = _$ErrorStateImpl<DataT>;

  @override
  DataT? get data;
  dynamic get error;
  StackTrace? get stackTrace;

  /// Create a copy of FlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<DataT, _$ErrorStateImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}
