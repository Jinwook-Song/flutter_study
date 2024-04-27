import 'package:fcm_example/main.dart';
import 'package:flutter/material.dart';

void showGlobalSnackBar(String message) {
  MyApp.rootScaffoldMessengerKey.currentState
      ?.showSnackBar(SnackBar(content: Text(message)));
}
