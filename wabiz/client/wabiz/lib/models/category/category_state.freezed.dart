// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryScreenState {
  ProjectType? get selectedType => throw _privateConstructorUsedError;
  CategoryProjectType? get projectFilter => throw _privateConstructorUsedError;
  List<CategoryItemModel> get project => throw _privateConstructorUsedError;
  AsyncValue<List<CategoryItemModel>> get projectState =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryScreenStateCopyWith<CategoryScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScreenStateCopyWith<$Res> {
  factory $CategoryScreenStateCopyWith(
          CategoryScreenState value, $Res Function(CategoryScreenState) then) =
      _$CategoryScreenStateCopyWithImpl<$Res, CategoryScreenState>;
  @useResult
  $Res call(
      {ProjectType? selectedType,
      CategoryProjectType? projectFilter,
      List<CategoryItemModel> project,
      AsyncValue<List<CategoryItemModel>> projectState});

  $ProjectTypeCopyWith<$Res>? get selectedType;
}

/// @nodoc
class _$CategoryScreenStateCopyWithImpl<$Res, $Val extends CategoryScreenState>
    implements $CategoryScreenStateCopyWith<$Res> {
  _$CategoryScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = freezed,
    Object? projectFilter = freezed,
    Object? project = null,
    Object? projectState = null,
  }) {
    return _then(_value.copyWith(
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as ProjectType?,
      projectFilter: freezed == projectFilter
          ? _value.projectFilter
          : projectFilter // ignore: cast_nullable_to_non_nullable
              as CategoryProjectType?,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      projectState: null == projectState
          ? _value.projectState
          : projectState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CategoryItemModel>>,
    ) as $Val);
  }

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectTypeCopyWith<$Res>? get selectedType {
    if (_value.selectedType == null) {
      return null;
    }

    return $ProjectTypeCopyWith<$Res>(_value.selectedType!, (value) {
      return _then(_value.copyWith(selectedType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryScreenStateImplCopyWith<$Res>
    implements $CategoryScreenStateCopyWith<$Res> {
  factory _$$CategoryScreenStateImplCopyWith(_$CategoryScreenStateImpl value,
          $Res Function(_$CategoryScreenStateImpl) then) =
      __$$CategoryScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProjectType? selectedType,
      CategoryProjectType? projectFilter,
      List<CategoryItemModel> project,
      AsyncValue<List<CategoryItemModel>> projectState});

  @override
  $ProjectTypeCopyWith<$Res>? get selectedType;
}

/// @nodoc
class __$$CategoryScreenStateImplCopyWithImpl<$Res>
    extends _$CategoryScreenStateCopyWithImpl<$Res, _$CategoryScreenStateImpl>
    implements _$$CategoryScreenStateImplCopyWith<$Res> {
  __$$CategoryScreenStateImplCopyWithImpl(_$CategoryScreenStateImpl _value,
      $Res Function(_$CategoryScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = freezed,
    Object? projectFilter = freezed,
    Object? project = null,
    Object? projectState = null,
  }) {
    return _then(_$CategoryScreenStateImpl(
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as ProjectType?,
      projectFilter: freezed == projectFilter
          ? _value.projectFilter
          : projectFilter // ignore: cast_nullable_to_non_nullable
              as CategoryProjectType?,
      project: null == project
          ? _value._project
          : project // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      projectState: null == projectState
          ? _value.projectState
          : projectState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CategoryItemModel>>,
    ));
  }
}

/// @nodoc

class _$CategoryScreenStateImpl implements _CategoryScreenState {
  const _$CategoryScreenStateImpl(
      {this.selectedType,
      this.projectFilter = CategoryProjectType.recommended,
      final List<CategoryItemModel> project = const [],
      this.projectState = const AsyncValue.loading()})
      : _project = project;

  @override
  final ProjectType? selectedType;
  @override
  @JsonKey()
  final CategoryProjectType? projectFilter;
  final List<CategoryItemModel> _project;
  @override
  @JsonKey()
  List<CategoryItemModel> get project {
    if (_project is EqualUnmodifiableListView) return _project;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_project);
  }

  @override
  @JsonKey()
  final AsyncValue<List<CategoryItemModel>> projectState;

  @override
  String toString() {
    return 'CategoryScreenState(selectedType: $selectedType, projectFilter: $projectFilter, project: $project, projectState: $projectState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryScreenStateImpl &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.projectFilter, projectFilter) ||
                other.projectFilter == projectFilter) &&
            const DeepCollectionEquality().equals(other._project, _project) &&
            (identical(other.projectState, projectState) ||
                other.projectState == projectState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedType, projectFilter,
      const DeepCollectionEquality().hash(_project), projectState);

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryScreenStateImplCopyWith<_$CategoryScreenStateImpl> get copyWith =>
      __$$CategoryScreenStateImplCopyWithImpl<_$CategoryScreenStateImpl>(
          this, _$identity);
}

abstract class _CategoryScreenState implements CategoryScreenState {
  const factory _CategoryScreenState(
          {final ProjectType? selectedType,
          final CategoryProjectType? projectFilter,
          final List<CategoryItemModel> project,
          final AsyncValue<List<CategoryItemModel>> projectState}) =
      _$CategoryScreenStateImpl;

  @override
  ProjectType? get selectedType;
  @override
  CategoryProjectType? get projectFilter;
  @override
  List<CategoryItemModel> get project;
  @override
  AsyncValue<List<CategoryItemModel>> get projectState;

  /// Create a copy of CategoryScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryScreenStateImplCopyWith<_$CategoryScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
