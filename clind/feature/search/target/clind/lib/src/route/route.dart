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
  static Route<dynamic> find(RouteSettings settings) {
    final Uri uri = Uri.tryParse(settings.name ?? '') ?? Uri();
    final Map<String, String> queryParameters = {...uri.queryParameters};
    final bool fullscreenDialog =
        bool.tryParse(queryParameters['fullscreenDialog'] ?? '') ?? false;
    return MaterialPageRoute(
      builder: (context) => findScreen(uri),
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    );
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
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context, {
    required String path,
    Map<String, String>? queryParameters,
    bool fullscreenDialog = false,
  }) async {
    final Map<String, String> params = {
      if (queryParameters != null) ...queryParameters,
      'fullscreenDialog': fullscreenDialog.toString(),
    };

    final Uri uri = Uri(
      path: path,
      queryParameters: params,
    );

    final Object? result =
        await Navigator.of(context).pushNamed<Object?>(uri.toString());
    return result as T?;
  }

  static Future<T?> push<T extends Object?>(
    BuildContext context, {
    required SearchRoute route,
    Map<String, String>? queryParameters,
    bool fullscreenDialog = false,
  }) {
    return pushNamed<T>(
      context,
      path: route.path,
      queryParameters: queryParameters,
      fullscreenDialog: fullscreenDialog,
    );
  }

  static Future<void> search(BuildContext context) {
    return push<void>(
      context,
      route: SearchRoute.search,
    );
  }
}
