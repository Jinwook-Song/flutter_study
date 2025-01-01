import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/presentation/presentation.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.splash.path,
  routes: <RouteBase>[
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
          onSignInTap: () => context.goNamed(Routes.savedRecipes.name),
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
          onSignUpTap: () => context.goNamed(Routes.savedRecipes.name),
        );
      },
    ),
    GoRoute(
      path: Routes.savedRecipes.path,
      name: Routes.savedRecipes.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SavedRecipesScreen();
      },
    ),
  ],
);
