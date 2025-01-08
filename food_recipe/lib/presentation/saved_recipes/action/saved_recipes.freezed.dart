// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedRecipesAction {
  Recipe get recipe => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) dismissBookmark,
    required TResult Function(Recipe recipe) onRecipeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? dismissBookmark,
    TResult? Function(Recipe recipe)? onRecipeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? dismissBookmark,
    TResult Function(Recipe recipe)? onRecipeTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DismissBookmark value) dismissBookmark,
    required TResult Function(OnRecipeTap value) onRecipeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DismissBookmark value)? dismissBookmark,
    TResult? Function(OnRecipeTap value)? onRecipeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DismissBookmark value)? dismissBookmark,
    TResult Function(OnRecipeTap value)? onRecipeTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedRecipesActionCopyWith<SavedRecipesAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedRecipesActionCopyWith<$Res> {
  factory $SavedRecipesActionCopyWith(
          SavedRecipesAction value, $Res Function(SavedRecipesAction) then) =
      _$SavedRecipesActionCopyWithImpl<$Res, SavedRecipesAction>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$SavedRecipesActionCopyWithImpl<$Res, $Val extends SavedRecipesAction>
    implements $SavedRecipesActionCopyWith<$Res> {
  _$SavedRecipesActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ) as $Val);
  }

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DismissBookmarkImplCopyWith<$Res>
    implements $SavedRecipesActionCopyWith<$Res> {
  factory _$$DismissBookmarkImplCopyWith(_$DismissBookmarkImpl value,
          $Res Function(_$DismissBookmarkImpl) then) =
      __$$DismissBookmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$DismissBookmarkImplCopyWithImpl<$Res>
    extends _$SavedRecipesActionCopyWithImpl<$Res, _$DismissBookmarkImpl>
    implements _$$DismissBookmarkImplCopyWith<$Res> {
  __$$DismissBookmarkImplCopyWithImpl(
      _$DismissBookmarkImpl _value, $Res Function(_$DismissBookmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$DismissBookmarkImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$DismissBookmarkImpl implements DismissBookmark {
  const _$DismissBookmarkImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'SavedRecipesAction.dismissBookmark(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DismissBookmarkImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DismissBookmarkImplCopyWith<_$DismissBookmarkImpl> get copyWith =>
      __$$DismissBookmarkImplCopyWithImpl<_$DismissBookmarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) dismissBookmark,
    required TResult Function(Recipe recipe) onRecipeTap,
  }) {
    return dismissBookmark(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? dismissBookmark,
    TResult? Function(Recipe recipe)? onRecipeTap,
  }) {
    return dismissBookmark?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? dismissBookmark,
    TResult Function(Recipe recipe)? onRecipeTap,
    required TResult orElse(),
  }) {
    if (dismissBookmark != null) {
      return dismissBookmark(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DismissBookmark value) dismissBookmark,
    required TResult Function(OnRecipeTap value) onRecipeTap,
  }) {
    return dismissBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DismissBookmark value)? dismissBookmark,
    TResult? Function(OnRecipeTap value)? onRecipeTap,
  }) {
    return dismissBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DismissBookmark value)? dismissBookmark,
    TResult Function(OnRecipeTap value)? onRecipeTap,
    required TResult orElse(),
  }) {
    if (dismissBookmark != null) {
      return dismissBookmark(this);
    }
    return orElse();
  }
}

abstract class DismissBookmark implements SavedRecipesAction {
  const factory DismissBookmark(final Recipe recipe) = _$DismissBookmarkImpl;

  @override
  Recipe get recipe;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DismissBookmarkImplCopyWith<_$DismissBookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRecipeTapImplCopyWith<$Res>
    implements $SavedRecipesActionCopyWith<$Res> {
  factory _$$OnRecipeTapImplCopyWith(
          _$OnRecipeTapImpl value, $Res Function(_$OnRecipeTapImpl) then) =
      __$$OnRecipeTapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnRecipeTapImplCopyWithImpl<$Res>
    extends _$SavedRecipesActionCopyWithImpl<$Res, _$OnRecipeTapImpl>
    implements _$$OnRecipeTapImplCopyWith<$Res> {
  __$$OnRecipeTapImplCopyWithImpl(
      _$OnRecipeTapImpl _value, $Res Function(_$OnRecipeTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnRecipeTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$OnRecipeTapImpl implements OnRecipeTap {
  const _$OnRecipeTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'SavedRecipesAction.onRecipeTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRecipeTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRecipeTapImplCopyWith<_$OnRecipeTapImpl> get copyWith =>
      __$$OnRecipeTapImplCopyWithImpl<_$OnRecipeTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) dismissBookmark,
    required TResult Function(Recipe recipe) onRecipeTap,
  }) {
    return onRecipeTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? dismissBookmark,
    TResult? Function(Recipe recipe)? onRecipeTap,
  }) {
    return onRecipeTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? dismissBookmark,
    TResult Function(Recipe recipe)? onRecipeTap,
    required TResult orElse(),
  }) {
    if (onRecipeTap != null) {
      return onRecipeTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DismissBookmark value) dismissBookmark,
    required TResult Function(OnRecipeTap value) onRecipeTap,
  }) {
    return onRecipeTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DismissBookmark value)? dismissBookmark,
    TResult? Function(OnRecipeTap value)? onRecipeTap,
  }) {
    return onRecipeTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DismissBookmark value)? dismissBookmark,
    TResult Function(OnRecipeTap value)? onRecipeTap,
    required TResult orElse(),
  }) {
    if (onRecipeTap != null) {
      return onRecipeTap(this);
    }
    return orElse();
  }
}

abstract class OnRecipeTap implements SavedRecipesAction {
  const factory OnRecipeTap(final Recipe recipe) = _$OnRecipeTapImpl;

  @override
  Recipe get recipe;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnRecipeTapImplCopyWith<_$OnRecipeTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
