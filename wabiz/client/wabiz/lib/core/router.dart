import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabiz/views/views.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final List<GlobalKey<NavigatorState>> _branchNavigatorKeys = List.generate(
  Routes.values.length,
  (index) => GlobalKey<NavigatorState>(),
);

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, shell) {
          return BottomNavShell(navigationShell: shell);
        },
        branches: List.generate(Routes.values.length, (index) {
          final route = Routes.values[index];
          return StatefulShellBranch(
            navigatorKey: _branchNavigatorKeys[index],
            preload: route.preload,
            routes: [
              GoRoute(
                path: route.path,
                builder: (context, state) => route.screen,
              ),
            ],
          );
        })),
  ],
);

enum Routes {
  home(
    path: '/home',
    label: '홈',
    icon: Icons.home_outlined,
    activeIcon: Icons.home,
    screen: HomeScreen(),
    preload: true,
  ),
  project(
    path: '/project',
    label: '프로젝트',
    icon: Icons.work_outline,
    activeIcon: Icons.work,
    screen: ProjectScreen(),
  ),
  favorite(
    path: '/favorite',
    label: '즐겨찾기',
    icon: Icons.favorite_border,
    activeIcon: Icons.favorite,
    screen: FavoriteScreen(),
  ),
  my(
    path: '/my',
    label: '마이페이지',
    icon: Icons.person_outline,
    activeIcon: Icons.person,
    screen: MyScreen(),
  );

  final String path;
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final Widget screen;
  final bool preload;

  const Routes({
    required this.path,
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.screen,
    this.preload = false,
  });
}
