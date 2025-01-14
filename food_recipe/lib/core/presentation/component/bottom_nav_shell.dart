import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class BottomNavShell extends StatelessWidget {
  static const double bottomNavBarHeight = 80;

  final StatefulNavigationShell navigationShell;
  final int currentIndex;
  final void Function(int index) onChangeIndex;

  const BottomNavShell({
    super.key,
    required this.navigationShell,
    required this.currentIndex,
    required this.onChangeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: bottomNavBarHeight,
            ),
            child: navigationShell,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomNavBar(
              selectedIndex: currentIndex,
              onNavTap: navigationShell.goBranch,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onNavTap;
  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onNavTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: BottomNavShell.bottomNavBarHeight,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border(
            top: BorderSide(
              color: AppColors.gray4,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final item in NavItem.values)
              Expanded(
                child: GestureDetector(
                  onTap: () => onNavTap(item.tabIndex),
                  behavior: HitTestBehavior.opaque,
                  child: NavDestination(
                    icon: item.icon,
                    selectedIcon: item.selectedIcon,
                    isSelected: selectedIndex == item.tabIndex,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class NavDestination extends StatelessWidget {
  final Widget icon;
  final Widget? selectedIcon;
  final bool isSelected;
  const NavDestination({
    super.key,
    required this.icon,
    this.selectedIcon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) return selectedIcon ?? icon;
    return icon;
  }
}

enum NavItem {
  home(
    tabIndex: 0,
    icon: Icon(
      Icons.home_outlined,
      color: AppColors.gray4,
    ),
    selectedIcon: Stack(
      fit: StackFit.expand,
      children: [
        Icon(
          Icons.home,
          color: AppColors.primary40,
        ),
        Icon(
          Icons.home_outlined,
          color: AppColors.primary100,
        ),
      ],
    ),
  ),
  bookmark(
    tabIndex: 1,
    icon: Icon(
      Icons.bookmark_outline,
      color: AppColors.gray4,
    ),
    selectedIcon: Stack(
      fit: StackFit.expand,
      children: [
        Icon(
          Icons.bookmark,
          color: AppColors.primary40,
        ),
        Icon(
          Icons.bookmark_outline,
          color: AppColors.primary100,
        ),
      ],
    ),
  ),
  notifications(
    tabIndex: 2,
    icon: Icon(
      Icons.notifications_outlined,
      color: AppColors.gray4,
    ),
    selectedIcon: Stack(
      fit: StackFit.expand,
      children: [
        Icon(
          Icons.notifications,
          color: AppColors.primary40,
        ),
        Icon(
          Icons.notifications_outlined,
          color: AppColors.primary100,
        ),
      ],
    ),
  ),
  profile(
    tabIndex: 3,
    icon: Icon(
      Icons.person_outline,
      color: AppColors.gray4,
    ),
    selectedIcon: Stack(
      fit: StackFit.expand,
      children: [
        Icon(
          Icons.person,
          color: AppColors.primary40,
        ),
        Icon(
          Icons.person_outline,
          color: AppColors.primary100,
        ),
      ],
    ),
  );

  final int tabIndex;
  final Widget icon;
  final Widget? selectedIcon;

  const NavItem({
    required this.tabIndex,
    required this.icon,
    required this.selectedIcon,
  });
}
