import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryModel({
    String? status,
    int? totalCount,
    @Default([]) List<CategoryItemModel> projects,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryItemModel with _$CategoryItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryItemModel({
    int? id,
    int? categoryId,
    int? projectTypeId,
    String? userId,
    String? title,
    String? owner,
    int? price,
    String? thumbnail,
    String? count,
    String? deadline,
    String? description,
    int? waitlistCount,
    int? totalFundedCount,
    int? totalFunded,
    String? isOpen,
    String? category,
    String? projectType,
    @Default([]) List<int> image,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}
