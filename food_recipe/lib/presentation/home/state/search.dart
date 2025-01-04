import 'package:food_recipe/domain/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchState with _$SearchState {
  @JsonSerializable(explicitToJson: true)
  const factory SearchState({
    required bool isLoading,
    required List<Recipe> recipes,
    required String searchQuery,
  }) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      recipes: [],
      searchQuery: '',
    );
  }

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}
