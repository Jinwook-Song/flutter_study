interface class Route {
  final String path;
  final String name;

  const Route({
    required this.path,
    required this.name,
  });
}

class Routes {
  static const Route splash = Route(
    path: '/splash',
    name: 'Splash',
  );

  static const Route signIn = Route(
    path: '/signin',
    name: 'Sign In',
  );

  static const Route savedRecipes = Route(
    path: '/saved-recipes',
    name: 'Saved Recipes',
  );
}
