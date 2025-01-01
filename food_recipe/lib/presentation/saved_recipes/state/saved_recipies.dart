import 'package:food_recipe/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipies.freezed.dart';
part 'saved_recipies.g.dart';

@freezed
class SavedRecipiesState with _$SavedRecipiesState {
  @JsonSerializable(explicitToJson: true)
  const factory SavedRecipiesState({
    required bool isLoading,
    required List<Recipe> recipes,
  }) = _SavedRecipiesState;

  factory SavedRecipiesState.initial() {
    return const SavedRecipiesState(isLoading: false, recipes: []);
  }

  factory SavedRecipiesState.fromJson(Map<String, dynamic> json) =>
      _$SavedRecipiesStateFromJson(json);
}
