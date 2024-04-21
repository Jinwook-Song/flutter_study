import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_product.freezed.dart';
part 'vo_product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required User user,
    required String name,
    required int price,
    required String description,
    @Default(ProductStatus.normal) ProductStatus status,
    required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
