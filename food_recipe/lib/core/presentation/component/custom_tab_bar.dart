import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';

class CustomTabBar extends StatefulWidget {
  final TabController? controller;
  final List<String> labels;
  const CustomTabBar({
    super.key,
    this.controller,
    required this.labels,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(
    length: 2,
    vsync: this,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashFactory: NoSplash.splashFactory,
      controller: widget.controller ?? _controller,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.primary100,
        borderRadius: BorderRadius.circular(10),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 7.5),
      labelColor: AppColors.white,
      labelStyle: TextStyles.smallTextBold,
      unselectedLabelColor: AppColors.primary100,
      unselectedLabelStyle: TextStyles.smallTextBold,
      tabs: [
        for (final label in widget.labels)
          Tab(
            text: label,
            height: 33,
          ),
      ],
    );
  }
}
