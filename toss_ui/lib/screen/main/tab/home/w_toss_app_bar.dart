import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TossAppbar extends StatefulWidget {
  /// 60
  static const double appbarHeight = 60;
  const TossAppbar({super.key});

  @override
  State<TossAppbar> createState() => _TossAppbarState();
}

class _TossAppbarState extends State<TossAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppbar.appbarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          const Gap(10),
          Image.asset('assets/image/icon/toss.png', height: 30),
          const Spacer(),
          Image.asset('assets/image/icon/map_point.png', height: 30),
          const Gap(10),
          Badge(
            isLabelVisible: true,
            child: Tap(
              onTap: () {
                Nav.push(const NotificationScreen());
              },
              child: Image.asset(
                'assets/image/icon/notification.png',
                height: 30,
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
