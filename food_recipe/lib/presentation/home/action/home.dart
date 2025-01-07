import 'package:food_recipe/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
sealed class HomeAction with _$HomeAction {
  const factory HomeAction.onSearchTap() = OnSearchTap;
  const factory HomeAction.onSelectCategory(RecipeCategory category) =
      OnSelectCategory;
  const factory HomeAction.onBookmarkTap(Recipe recipe) = OnBookmarkTap;
}
