import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/f_notification.dart';
import 'package:fast_app_base/screen/notification/view_models/notification_edit_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationScreen extends HookConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final isEditMode = ref.watch(notificationEditModeProvider);
    return Material(
      child: Column(
        children: [
          AppBar(
            title: '알람'.text.make(),
            actions: [
              GestureDetector(
                onTap:
                    ref.read(notificationEditModeProvider.notifier).toggleEdit,
                behavior: HitTestBehavior.translucent,
                child: (isEditMode ? '편집' : '완료')
                    .text
                    .size(16)
                    .make()
                    .pOnly(right: 16),
              ),
            ],
          ),
          TabBar(
            controller: tabController,
            tabs: [
              '활동 알림'.text.white.make(),
              '키워드 알림'.text.white.make(),
            ],
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            labelPadding: const EdgeInsets.symmetric(vertical: 20),
            indicatorColor: Colors.white,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                const NotificationFragment(),
                Container(
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
