import 'package:fast_app_base/entity/product/vo_product.gen.dart';
import 'package:fast_app_base/entity/user/vo_address.gen.dart';
import 'package:fast_app_base/entity/user/vo_user.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vd_product_post.gen.freezed.dart';
part 'vd_product_post.gen.g.dart';

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
