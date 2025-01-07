// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSearchTap,
    required TResult Function(RecipeCategory category) onSelectCategory,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSearchTap,
    TResult? Function(RecipeCategory category)? onSelectCategory,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSearchTap,
    TResult Function(RecipeCategory category)? onSelectCategory,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchTap value) onSearchTap,
    required TResult Function(OnSelectCategory value) onSelectCategory,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearchTap value)? onSearchTap,
    TResult? Function(OnSelectCategory value)? onSelectCategory,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchTap value)? onSearchTap,
    TResult Function(OnSelectCategory value)? onSelectCategory,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeActionCopyWith<$Res> {
  factory $HomeActionCopyWith(
          HomeAction value, $Res Function(HomeAction) then) =
      _$HomeActionCopyWithImpl<$Res, HomeAction>;
}

/// @nodoc
class _$HomeActionCopyWithImpl<$Res, $Val extends HomeAction>
    implements $HomeActionCopyWith<$Res> {
  _$HomeActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnSearchTapImplCopyWith<$Res> {
  factory _$$OnSearchTapImplCopyWith(
          _$OnSearchTapImpl value, $Res Function(_$OnSearchTapImpl) then) =
      __$$OnSearchTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSearchTapImplCopyWithImpl<$Res>
    extends _$HomeActionCopyWithImpl<$Res, _$OnSearchTapImpl>
    implements _$$OnSearchTapImplCopyWith<$Res> {
  __$$OnSearchTapImplCopyWithImpl(
      _$OnSearchTapImpl _value, $Res Function(_$OnSearchTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSearchTapImpl implements OnSearchTap {
  const _$OnSearchTapImpl();

  @override
  String toString() {
    return 'HomeAction.onSearchTap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSearchTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSearchTap,
    required TResult Function(RecipeCategory category) onSelectCategory,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) {
    return onSearchTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSearchTap,
    TResult? Function(RecipeCategory category)? onSelectCategory,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) {
    return onSearchTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSearchTap,
    TResult Function(RecipeCategory category)? onSelectCategory,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onSearchTap != null) {
      return onSearchTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchTap value) onSearchTap,
    required TResult Function(OnSelectCategory value) onSelectCategory,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) {
    return onSearchTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearchTap value)? onSearchTap,
    TResult? Function(OnSelectCategory value)? onSelectCategory,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) {
    return onSearchTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchTap value)? onSearchTap,
    TResult Function(OnSelectCategory value)? onSelectCategory,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onSearchTap != null) {
      return onSearchTap(this);
    }
    return orElse();
  }
}

abstract class OnSearchTap implements HomeAction {
  const factory OnSearchTap() = _$OnSearchTapImpl;
}

/// @nodoc
abstract class _$$OnSelectCategoryImplCopyWith<$Res> {
  factory _$$OnSelectCategoryImplCopyWith(_$OnSelectCategoryImpl value,
          $Res Function(_$OnSelectCategoryImpl) then) =
      __$$OnSelectCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeCategory category});
}

/// @nodoc
class __$$OnSelectCategoryImplCopyWithImpl<$Res>
    extends _$HomeActionCopyWithImpl<$Res, _$OnSelectCategoryImpl>
    implements _$$OnSelectCategoryImplCopyWith<$Res> {
  __$$OnSelectCategoryImplCopyWithImpl(_$OnSelectCategoryImpl _value,
      $Res Function(_$OnSelectCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$OnSelectCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RecipeCategory,
    ));
  }
}

/// @nodoc

class _$OnSelectCategoryImpl implements OnSelectCategory {
  const _$OnSelectCategoryImpl(this.category);

  @override
  final RecipeCategory category;

  @override
  String toString() {
    return 'HomeAction.onSelectCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectCategoryImplCopyWith<_$OnSelectCategoryImpl> get copyWith =>
      __$$OnSelectCategoryImplCopyWithImpl<_$OnSelectCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSearchTap,
    required TResult Function(RecipeCategory category) onSelectCategory,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) {
    return onSelectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSearchTap,
    TResult? Function(RecipeCategory category)? onSelectCategory,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) {
    return onSelectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSearchTap,
    TResult Function(RecipeCategory category)? onSelectCategory,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onSelectCategory != null) {
      return onSelectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchTap value) onSearchTap,
    required TResult Function(OnSelectCategory value) onSelectCategory,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) {
    return onSelectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearchTap value)? onSearchTap,
    TResult? Function(OnSelectCategory value)? onSelectCategory,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) {
    return onSelectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchTap value)? onSearchTap,
    TResult Function(OnSelectCategory value)? onSelectCategory,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onSelectCategory != null) {
      return onSelectCategory(this);
    }
    return orElse();
  }
}

abstract class OnSelectCategory implements HomeAction {
  const factory OnSelectCategory(final RecipeCategory category) =
      _$OnSelectCategoryImpl;

  RecipeCategory get category;

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSelectCategoryImplCopyWith<_$OnSelectCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBookmarkTapImplCopyWith<$Res> {
  factory _$$OnBookmarkTapImplCopyWith(
          _$OnBookmarkTapImpl value, $Res Function(_$OnBookmarkTapImpl) then) =
      __$$OnBookmarkTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnBookmarkTapImplCopyWithImpl<$Res>
    extends _$HomeActionCopyWithImpl<$Res, _$OnBookmarkTapImpl>
    implements _$$OnBookmarkTapImplCopyWith<$Res> {
  __$$OnBookmarkTapImplCopyWithImpl(
      _$OnBookmarkTapImpl _value, $Res Function(_$OnBookmarkTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnBookmarkTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$OnBookmarkTapImpl implements OnBookmarkTap {
  const _$OnBookmarkTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'HomeAction.onBookmarkTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBookmarkTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      __$$OnBookmarkTapImplCopyWithImpl<_$OnBookmarkTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSearchTap,
    required TResult Function(RecipeCategory category) onSelectCategory,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) {
    return onBookmarkTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSearchTap,
    TResult? Function(RecipeCategory category)? onSelectCategory,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) {
    return onBookmarkTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSearchTap,
    TResult Function(RecipeCategory category)? onSelectCategory,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onBookmarkTap != null) {
      return onBookmarkTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchTap value) onSearchTap,
    required TResult Function(OnSelectCategory value) onSelectCategory,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) {
    return onBookmarkTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSearchTap value)? onSearchTap,
    TResult? Function(OnSelectCategory value)? onSelectCategory,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) {
    return onBookmarkTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchTap value)? onSearchTap,
    TResult Function(OnSelectCategory value)? onSelectCategory,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onBookmarkTap != null) {
      return onBookmarkTap(this);
    }
    return orElse();
  }
}

abstract class OnBookmarkTap implements HomeAction {
  const factory OnBookmarkTap(final Recipe recipe) = _$OnBookmarkTapImpl;

  Recipe get recipe;

  /// Create a copy of HomeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
