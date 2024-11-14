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

abstract class MyRoutes {
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
    final MyRoute route = MyRoute.decode(uri.path);
    switch (route) {
      case MyRoute.my:
        return const MyBlocProvider(child: MyScreen());
      case MyRoute.unknown:
        return const SizedBox();
    }
  }
}

abstract class MyRouteTo {
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
    required MyRoute route,
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

  static Future<void> my(BuildContext context) {
    return push<void>(
      context,
      route: MyRoute.my,
    );
  }
}
