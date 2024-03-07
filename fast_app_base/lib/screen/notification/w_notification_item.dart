import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TossNotification notification;
  final VoidCallback onTap;
  const NotificationItemWidget(
    this.notification, {
    super.key,
    required this.onTap,
  });

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double _leftPadding = 10;
  static const double _iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Gap(_leftPadding),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: _iconWidth,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.lessImportant)
                    .make(),
                const Spacer(),
                timeago
                    .format(
                      widget.notification.time,
                      locale: context.locale.languageCode,
                    )
                    .text
                    .size(13)
                    .color(context.appColors.lessImportant)
                    .make(),
                const Gap(_leftPadding),
              ],
            ),
            widget.notification.description.text
                .make()
                .pOnly(left: _leftPadding + _iconWidth),
          ],
        ),
      ),
    );
  }
}
