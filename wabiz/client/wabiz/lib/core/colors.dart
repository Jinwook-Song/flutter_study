import 'package:flutter/material.dart';

class AppColors extends Color {
  AppColors(super.value);

  static const Color scaffoldBackgroundColor = Color(0xFFF2F4F6);
  static const Color primary = Color(0xFF03C3C4);
  static const Color secondary = Color(0xFFE2F9F9);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const Color bg = Color(0xFFF2F2F7);
  static const Color newBg = Color(0xFFF2F4F6);

  static const int _grayPrimaryValue = 0xFF848487;

  static const MaterialColor wabizGray = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFE5E5EA),
      200: Color(0xFFD4D4D4),
      300: Color(0xFFAEAEB2),
      400: Color(0xFF8E8E93),
      500: Color(_grayPrimaryValue),
      600: Color(0xFF646464),
      700: Color(0xFF4A4A4A),
      800: Color(0xFF303030),
      900: Color(0xFF242424),
    },
  );
}
