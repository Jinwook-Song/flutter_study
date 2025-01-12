import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';

class CustomTabBar extends StatefulWidget {
  final TabController? controller;
  final List<String> labels;
  final EdgeInsetsGeometry padding;
  const CustomTabBar({
    super.key,
    this.controller,
    required this.labels,
    this.padding = const EdgeInsets.only(left: 30, right: 15),
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(
    length: widget.labels.length,
    vsync: this,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _isScrollable => widget.labels.length > 2;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: widget.padding,
      isScrollable: _isScrollable,
      tabAlignment: _isScrollable ? TabAlignment.start : TabAlignment.fill,
      labelPadding: const EdgeInsets.symmetric(horizontal: 20),
      splashFactory: NoSplash.splashFactory,
      controller: widget.controller ?? _controller,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.primary100,
        borderRadius: BorderRadius.circular(10),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
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
