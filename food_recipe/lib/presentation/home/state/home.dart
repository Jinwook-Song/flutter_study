import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HomeCategory> categories,
    required HomeCategory selectedCategory,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      categories: HomeCategory.values,
      selectedCategory: HomeCategory.all,
    );
  }

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}

enum HomeCategory {
  all,
  indian,
  asian,
  chinese,
  italian,
}
