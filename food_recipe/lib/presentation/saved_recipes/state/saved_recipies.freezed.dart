// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_recipies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedRecipiesState _$SavedRecipiesStateFromJson(Map<String, dynamic> json) {
  return _SavedRecipiesState.fromJson(json);
}

/// @nodoc
mixin _$SavedRecipiesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Recipe> get recipes => throw _privateConstructorUsedError;

  /// Serializes this SavedRecipiesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedRecipiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedRecipiesStateCopyWith<SavedRecipiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedRecipiesStateCopyWith<$Res> {
  factory $SavedRecipiesStateCopyWith(
          SavedRecipiesState value, $Res Function(SavedRecipiesState) then) =
      _$SavedRecipiesStateCopyWithImpl<$Res, SavedRecipiesState>;
  @useResult
  $Res call({bool isLoading, List<Recipe> recipes});
}

/// @nodoc
class _$SavedRecipiesStateCopyWithImpl<$Res, $Val extends SavedRecipiesState>
    implements $SavedRecipiesStateCopyWith<$Res> {
  _$SavedRecipiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedRecipiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedRecipiesStateImplCopyWith<$Res>
    implements $SavedRecipiesStateCopyWith<$Res> {
  factory _$$SavedRecipiesStateImplCopyWith(_$SavedRecipiesStateImpl value,
          $Res Function(_$SavedRecipiesStateImpl) then) =
      __$$SavedRecipiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Recipe> recipes});
}

/// @nodoc
class __$$SavedRecipiesStateImplCopyWithImpl<$Res>
    extends _$SavedRecipiesStateCopyWithImpl<$Res, _$SavedRecipiesStateImpl>
    implements _$$SavedRecipiesStateImplCopyWith<$Res> {
  __$$SavedRecipiesStateImplCopyWithImpl(_$SavedRecipiesStateImpl _value,
      $Res Function(_$SavedRecipiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedRecipiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recipes = null,
  }) {
    return _then(_$SavedRecipiesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SavedRecipiesStateImpl implements _SavedRecipiesState {
  const _$SavedRecipiesStateImpl(
      {required this.isLoading, required final List<Recipe> recipes})
      : _recipes = recipes;

  factory _$SavedRecipiesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedRecipiesStateImplFromJson(json);

  @override
  final bool isLoading;
  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'SavedRecipiesState(isLoading: $isLoading, recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedRecipiesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_recipes));

  /// Create a copy of SavedRecipiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedRecipiesStateImplCopyWith<_$SavedRecipiesStateImpl> get copyWith =>
      __$$SavedRecipiesStateImplCopyWithImpl<_$SavedRecipiesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedRecipiesStateImplToJson(
      this,
    );
  }
}

abstract class _SavedRecipiesState implements SavedRecipiesState {
  const factory _SavedRecipiesState(
      {required final bool isLoading,
      required final List<Recipe> recipes}) = _$SavedRecipiesStateImpl;

  factory _SavedRecipiesState.fromJson(Map<String, dynamic> json) =
      _$SavedRecipiesStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<Recipe> get recipes;

  /// Create a copy of SavedRecipiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedRecipiesStateImplCopyWith<_$SavedRecipiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
