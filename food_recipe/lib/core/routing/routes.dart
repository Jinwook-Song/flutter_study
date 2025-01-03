interface class Route {
  final String path;
  final String name;

  const Route({
    required this.path,
    required this.name,
  });
}

abstract class Routes {
  static const Route uiTest = Route(
    path: '/ui-test',
    name: 'Ui Test',
  );

  static const Route splash = Route(
    path: '/splash',
    name: 'Splash',
  );

  static const Route signIn = Route(
    path: '/signin',
    name: 'Sign In',
  );

  static const Route signUp = Route(
    path: '/signup',
    name: 'Sign Up',
  );

  static const Route home = Route(
    path: '/home',
    name: 'Home',
  );

  static const Route savedRecipes = Route(
    path: '/saved-recipes',
    name: 'Saved Recipes',
  );

  static const Route notifications = Route(
    path: '/notifications',
    name: 'Notifications',
  );

  static const Route profile = Route(
    path: '/profile',
    name: 'Profile',
  );
}
