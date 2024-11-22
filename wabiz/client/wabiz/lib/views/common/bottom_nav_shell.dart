import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabiz/core/core.dart';

class BottomNavShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    const double bottomNavBarHeight = kBottomNavigationBarHeight;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: bottomNavBarHeight),
          child: navigationShell,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: BottomNavigationBar(
            currentIndex: navigationShell.currentIndex,
            onTap: navigationShell.goBranch,
            items: Routes.values.map((route) {
              int index = route.index;
              bool isActive = index == navigationShell.currentIndex;
              return BottomNavigationBarItem(
                icon: Icon(isActive ? route.activeIcon : route.icon),
                label: route.label,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
