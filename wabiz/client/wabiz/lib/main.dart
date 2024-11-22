import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';

void main() {
  runApp(const WabizApp());
}

class WabizApp extends StatelessWidget {
  const WabizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'wabiz',
      routerConfig: goRouter,
      theme: wabizDefaultTheme,
    );
  }
}
