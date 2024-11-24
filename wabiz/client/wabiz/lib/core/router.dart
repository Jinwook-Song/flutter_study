import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabiz/views/views.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final List<GlobalKey<NavigatorState>> _branchNavigatorKeys = List.generate(
  RootRoutes.values.length,
  (index) => GlobalKey<NavigatorState>(
    debugLabel: RootRoutes.values[index].route.name,
  ),
);

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) {
        return BottomNavShell(navigationShell: shell);
      },
      branches: List.generate(RootRoutes.values.length, (index) {
        final RootRoutes route = RootRoutes.values[index];
        return StatefulShellBranch(
          navigatorKey: _branchNavigatorKeys[index],
          preload: route.preload,
          routes: [
            GoRoute(
              path: route.route.path,
              name: route.route.name,
              builder: (context, state) => route.screen,
              routes: _getSubRoutes(route),
            ),
          ],
        );
      }),
    ),
  ],
);

class RouteModel {
  final String path;
  final String name;

  const RouteModel({
    required this.path,
    required this.name,
  });
}

class AppRoutes {
  // Home
  static const RouteModel home = RouteModel(
    path: '/home',
    name: 'Home',
  );

  static const RouteModel category = RouteModel(
    path: 'category/:id',
    name: 'Category',
  );

  // Project
  static const RouteModel project = RouteModel(
    path: '/project',
    name: 'Project',
  );

  // Favorite
  static const RouteModel favorite = RouteModel(
    path: '/favorite',
    name: 'Favorite',
  );

  // My
  static const RouteModel my = RouteModel(
    path: '/my',
    name: 'My',
  );
}

enum RootRoutes {
  home(
    route: AppRoutes.home,
    label: '홈',
    icon: Icons.home_outlined,
    activeIcon: Icons.home,
    screen: HomeScreen(),
    preload: true,
  ),
  project(
    route: AppRoutes.project,
    label: '프로젝트',
    icon: Icons.add,
    activeIcon: Icons.add,
    screen: ProjectScreen(),
  ),
  favorite(
    route: AppRoutes.favorite,
    label: '즐겨찾기',
    icon: Icons.favorite_border,
    activeIcon: Icons.favorite,
    screen: FavoriteScreen(),
  ),
  my(
    route: AppRoutes.my,
    label: '마이페이지',
    icon: Icons.person_outline,
    activeIcon: Icons.person,
    screen: MyScreen(),
  );

  final RouteModel route;
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final Widget screen;
  final bool preload;

  const RootRoutes({
    required this.route,
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.screen,
    this.preload = false,
  });
}

List<GoRoute> _getSubRoutes(RootRoutes route) {
  switch (route) {
    case RootRoutes.home:
      return [
        GoRoute(
          path: AppRoutes.category.path,
          name: AppRoutes.category.name,
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '';
            return CategoryScreen(id);
          },
        ),
      ];

    case RootRoutes.project:
    case RootRoutes.favorite:
    case RootRoutes.my:
    default:
      return [];
  }
}
