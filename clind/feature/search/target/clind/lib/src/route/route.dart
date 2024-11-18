import 'package:core_util/util.dart';
import 'package:search_di/di.dart';
import 'package:flutter/material.dart';
import 'package:feature_search/clind.dart';

enum SearchRoute {
  search,
  unknown;

  static String encode(SearchRoute route) => route.path;

  static SearchRoute decode(String path) => SearchRoute.values.firstWhere(
        (e) => e.path == path,
        orElse: () => SearchRoute.unknown,
      );
}

extension SearchRouteX on SearchRoute {
  String get path {
    if (this == SearchRoute.search) return '/$name';
    return '${SearchRoute.search.path}/$name';
  }
}

abstract class ISearchRoutes {
  static List<ModularRoute> routes = SearchRoute.values.map(_find).toList();

  static ModularRoute _find(SearchRoute route) {
    return ChildRoute(
      route.path,
      child: (context) => findScreen(Uri.parse(route.path)),
      transition: _findTransitionType(route),
    );
  }

  static TransitionType? _findTransitionType(SearchRoute route) {
    switch (route) {
      default:
        return null;
    }
  }

  static Widget findScreen(Uri uri) {
    final SearchRoute route = SearchRoute.decode(uri.path);
    switch (route) {
      case SearchRoute.search:
        return const SearchBlocProvider(child: SearchScreen());
      case SearchRoute.unknown:
        return const SizedBox();
    }
  }
}

abstract class ISearchRouteTo {
  static Future<T?> push<T extends Object?>({
    required SearchRoute route,
    Map<String, String>? queryParameters,
  }) {
    return Modular.to.pushNamed<T>(
      route.path,
      arguments: queryParameters,
    );
  }

  static Future<void> search() {
    return push<void>(route: SearchRoute.search);
  }
}
