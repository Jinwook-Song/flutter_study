import 'package:fast_app_base/common/constant/app_colors.dart';
import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
            title: Text(('알림')),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: notificationDummies.length,
              (context, index) {
                return NotificationItemWidget(
                  notificationDummies[index],
                  onTap: () => NotificationDialog(
                    [notificationDummies[0], notificationDummies[2]],
                  ).show(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}