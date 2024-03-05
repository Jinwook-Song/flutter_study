import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TossAppbar extends StatefulWidget {
  const TossAppbar({super.key});

  @override
  State<TossAppbar> createState() => _TossAppbarState();
}

class _TossAppbarState extends State<TossAppbar> {
  bool _showBadge = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          const Gap(10),
          Image.asset('assets/image/icon/toss.png', height: 30),
          const Spacer(),
          Image.asset('assets/image/icon/map_point.png', height: 30),
          const Gap(10),
          Badge(
            isLabelVisible: _showBadge,
            child: Tap(
              onTap: () {
                setState(() {
                  _showBadge = !_showBadge;
                });
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
