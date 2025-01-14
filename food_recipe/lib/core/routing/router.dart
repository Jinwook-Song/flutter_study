import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/main.dart';
import 'package:food_recipe/presentation/ingredient/view/ingredient.dart';
import 'package:food_recipe/presentation/presentation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.splash.path,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.uiTest.path,
      name: Routes.uiTest.name,
      builder: (BuildContext context, GoRouterState state) {
        return const UiTestScreen();
      },
    ),
    GoRoute(
      path: Routes.splash.path,
      name: Routes.splash.name,
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen(
          onStartTap: () => context.goNamed(Routes.signIn.name),
        );
      },
    ),
    GoRoute(
      path: Routes.signIn.path,
      name: Routes.signIn.name,
      builder: (BuildContext context, GoRouterState state) {
        return SignInScreen(
          onSignInTap: () => context.goNamed(Routes.home.name),
          onSignUpTap: () => context.pushNamed(Routes.signUp.name),
        );
      },
    ),
    GoRoute(
      path: Routes.signUp.path,
      name: Routes.signUp.name,
      builder: (BuildContext context, GoRouterState state) {
        return SignUpScreen(
          onSignInTap: context.pop,
          onSignUpTap: () => context.goNamed(Routes.home.name),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavShell(
          navigationShell: navigationShell,
          currentIndex: navigationShell.currentIndex,
          onChangeIndex: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home.path,
              name: Routes.home.name,
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.savedRecipes.path,
              name: Routes.savedRecipes.name,
              builder: (BuildContext context, GoRouterState state) {
                return const SavedRecipesScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.notifications.path,
              name: Routes.notifications.name,
              builder: (BuildContext context, GoRouterState state) {
                return const NotificationsScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name,
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: Routes.search.path,
      name: Routes.search.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchScreen();
      },
    ),
    GoRoute(
      path: Routes.ingredient.path,
      name: Routes.ingredient.name,
      builder: (BuildContext context, GoRouterState state) {
        final recipeId = int.parse(state.pathParameters['recipeId']!);
        return IngredientScreen(recipeId: recipeId);
      },
    ),
  ],
);
