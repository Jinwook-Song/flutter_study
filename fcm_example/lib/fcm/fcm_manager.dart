import 'dart:io';

import 'package:fcm_example/util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FcmManager {
  static final _messaging = FirebaseMessaging.instance;

  static Future<void> requestPermission() async {
    await _messaging.requestPermission();
    final token = await _messaging.getToken();
    debugPrint(token);
  }

  static Future<void> initialize() async {
    /// Foreground
    FirebaseMessaging.onMessage.listen((message) {
      final title = message.notification?.title;
      debugPrint(title);
      if (title == null) return;
      showGlobalSnackBar(title);
    });

    /// Background
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final title = message.notification?.title;
      debugPrint(title);
      if (title == null) return;
      showGlobalSnackBar(title);
    });

    /// Not Running
    final firstMessage = await _messaging.getInitialMessage();
    if (firstMessage != null) {
      debugPrint(firstMessage.toString());
      showGlobalSnackBar(firstMessage.data['deeplink']);
    }
  }
}
