import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class BottomNavShell extends StatelessWidget {
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
    const double bottomNavBarHeight = 80;

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
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: SafeArea(
              bottom: false,
              child: NavigationBar(
                elevation: 1,
                height: bottomNavBarHeight,
                surfaceTintColor: AppColors.gray2,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                indicatorColor: Colors.transparent,
                onDestinationSelected: navigationShell.goBranch,
                selectedIndex: currentIndex,
                destinations: [
                  NavigationDestination(
                    icon: const Icon(
                      Icons.home_outlined,
                      color: AppColors.gray4,
                    ),
                    selectedIcon: const Stack(
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
                    label: Routes.home.name,
                  ),
                  NavigationDestination(
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: AppColors.gray4,
                    ),
                    selectedIcon: const Stack(
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: AppColors.primary40,
                        ),
                        Icon(
                          Icons.bookmark_border,
                          color: AppColors.primary100,
                        ),
                      ],
                    ),
                    label: Routes.savedRecipes.name,
                  ),
                  NavigationDestination(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: AppColors.gray4,
                    ),
                    selectedIcon: const Stack(
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
                    label: Routes.notifications.name,
                  ),
                  NavigationDestination(
                    icon: const Icon(
                      Icons.person_outline,
                      color: AppColors.gray4,
                    ),
                    selectedIcon: const Stack(
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
                    label: Routes.profile.name,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
