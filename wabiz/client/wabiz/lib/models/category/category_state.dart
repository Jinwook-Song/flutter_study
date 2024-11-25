import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabiz/models/models.dart';

part 'category_state.freezed.dart';

enum CategoryProjectType {
  recommended('추천순'),
  lowFunded('낮은 펀딩금액순'),
  highFunded('높은 펀딘금액순');

  final String value;

  const CategoryProjectType(this.value);
}

@freezed
class CategoryScreenState with _$CategoryScreenState {
  const factory CategoryScreenState({
    ProjectType? selectedType,
    @Default(CategoryProjectType.recommended)
    CategoryProjectType? projectFilter,
    @Default([]) List<CategoryItemModel> project,
    @Default(AsyncValue.loading())
    AsyncValue<List<CategoryItemModel>> projectState,
  }) = _CategoryScreenState;
}
