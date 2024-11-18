import 'dart:async';

import 'package:core_util/util.dart';
import 'package:feature_community/clind.dart';
import 'package:feature_notification/clind.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class ClindUriHandlerWidget extends StatefulWidget {
  final Widget child;
  const ClindUriHandlerWidget({super.key, required this.child});

  @override
  State<ClindUriHandlerWidget> createState() => _ClindUriHandlerWidgetState();
}

class _ClindUriHandlerWidgetState extends State<ClindUriHandlerWidget> {
  StreamSubscription<RouteEvent>? _routeSubscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _subscribeRouteEvent(),
    );
  }

  @override
  void dispose() {
    _unsubscribeRouteEvent();
    super.dispose();
  }

  void _subscribeRouteEvent() {
    _routeSubscription =
        Modular.get<EventBus>().on<RouteEvent>().listen((event) {
      _open(event.route);
    });
  }

  void _unsubscribeRouteEvent() {
    _routeSubscription?.cancel();
    _routeSubscription = null;
  }

  Future<void> _open(String route) async {
    final Uri uri = Uri.tryParse(route) ?? Uri();

    int? tabIndex;

    if (uri.path == CommunityRoute.community.path) {
      tabIndex = 0;
    } else if (uri.path == NotificationRoute.notification.path) {
      tabIndex = 1;
    }

    if (tabIndex != null) {
      Modular.get<EventBus>().fire(HomeTabEvent(tabIndex));

      if (tabIndex == 0) {
        final int nestedTabIndex = switch (uri.queryParameters['type'] ?? '') {
          'popular' => 1,
          _ => 0,
        };

        Modular.get<EventBus>().fire(CommunityNestedTabEvent(nestedTabIndex));
      }
      return;
    }

    Modular.to.pushNamed(
      uri.path,
      arguments: {
        ...uri.queryParameters,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
