import 'package:feature_community/clind.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_theme/theme.dart';

class CommunityTabBar extends StatelessWidget {
  final TabController controller;
  final List<String> tabs;
  final Function(int) onTap;
  final EdgeInsets padding;
  const CommunityTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 20.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: context.colorScheme.gray100,
      labelStyle: context.textTheme.default15Medium,
      labelColor: context.colorScheme.gray100,
      unselectedLabelStyle: context.textTheme.default15Medium,
      unselectedLabelColor: context.colorScheme.gray400,
      dividerColor: context.appBarTheme.backgroundColor,
      splashFactory: NoSplash.splashFactory,
      tabs: List.generate(
        CommunityTabTypeX.count,
        (index) => Tab(
          text: CommunityTabType.values[index].title,
        ),
      ),
      onTap: onTap,
    );
  }
}
