import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vd_product_post.freezed.dart';
part 'vd_product_post.g.dart';

@freezed
class ProductPost with _$ProductPost {
  factory ProductPost({
    required User user,
    required Product product,
    required String content,
    required Address address,
    required int chatCount,
    required int likeCount,
    required DateTime createdAt,
  }) = _ProductPost;

  factory ProductPost.fromJson(Map<String, dynamic> json) =>
      _$ProductPostFromJson(json);
}
