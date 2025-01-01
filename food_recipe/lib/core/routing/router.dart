import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/data/repository/repository.dart';
import 'package:food_recipe/domain/use_case/get_saved_recipes.dart';
import 'package:food_recipe/presentation/saved_recipes/saved_recipes.dart';
import 'package:food_recipe/presentation/sign_in/sign_in.dart';
import 'package:food_recipe/presentation/sign_up/sign_up.dart';
import 'package:food_recipe/presentation/splash/splash.dart';

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
        return FutureBuilder(
          future: GetSavedRecipesUseCase(
            recipeRepository: MockRecipeRepositoryImpl(),
            bookmarkRepository: MockBookmarkRepositoryImpl(),
          ).execute(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            }
            return SavedRecipesScreen(
              recipes: snapshot.requireData,
            );
          },
        );
      },
    ),
  ],
);
