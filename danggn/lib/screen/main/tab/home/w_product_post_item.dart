import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/product_post/vd_product_post.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProductPostItem extends StatelessWidget {
  const ProductPostItem(this.post, {super.key});
  final ProductPost post;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: post.product.images.first,
                width: 150,
              ),
            ),
            const Gap(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  post.content.text.size(17).bold.make(),
                  DefaultTextStyle(
                    style:
                        TextStyle(color: context.appColors.lessImportantColor),
                    child: Row(
                      children: [
                        post.address.simpleAddress.text.make(),
                        '•'.text.make(),
                        timeago
                            .format(
                              post.createdAt,
                              locale: context.locale.languageCode,
                            )
                            .text
                            .make(),
                      ],
                    ),
                  ),
                  post.product.price.toWon().text.bold.make(),
                ],
              ),
            ),
          ],
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('$basePath/home/post_comment.png'),
                post.chatCount.text.make(),
                Image.asset('$basePath/home/post_heart_off.png'),
                post.likeCount.text.make(),
              ],
            ),
          ),
        ),
      ],
    ).p(15);
  }
}
