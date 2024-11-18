import 'package:core_util/util.dart';
import 'package:my_di/di.dart';
import 'package:flutter/material.dart';
import 'package:feature_my/clind.dart';

enum MyRoute {
  my,
  unknown;

  static String encode(MyRoute route) => route.path;

  static MyRoute decode(String path) => MyRoute.values.firstWhere(
        (e) => e.path == path,
        orElse: () => MyRoute.unknown,
      );
}

extension MyRouteX on MyRoute {
  String get path {
    if (this == MyRoute.my) return '/$name';
    return '${MyRoute.my.path}/$name';
  }
}

abstract class IMyRoutes {
  static List<ModularRoute> routes = MyRoute.values.map(_find).toList();

  static ModularRoute _find(MyRoute route) {
    return ChildRoute(
      route.path,
      child: (context) => findScreen(Uri.parse(route.path)),
      transition: _findTransitionType(route),
    );
  }

  static TransitionType? _findTransitionType(MyRoute route) {
    switch (route) {
      default:
        return null;
    }
  }

  static Widget findScreen(Uri uri) {
    final MyRoute route = MyRoute.decode(uri.path);
    switch (route) {
      case MyRoute.my:
        return const MyBlocProvider(child: MyScreen());
      case MyRoute.unknown:
        return const SizedBox();
    }
  }
}

abstract class IMyRouteTo {
  static Future<T?> push<T extends Object?>({
    required MyRoute route,
    Map<String, String>? queryParameters,
  }) {
    return Modular.to.pushNamed<T>(
      route.path,
      arguments: queryParameters,
    );
  }

  static Future<void> my() {
    return push<void>(route: MyRoute.my);
  }
}
