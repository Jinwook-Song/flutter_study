import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/views/views.dart';

void main() {
  runApp(const WabizApp());
}

class WabizApp extends StatelessWidget {
  const WabizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: wabizDefaultTheme,
      home: const HomeScreen(),
    );
  }
}
