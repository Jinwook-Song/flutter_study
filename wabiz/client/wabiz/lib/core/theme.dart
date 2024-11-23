import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';

final ThemeData wabizDefaultTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  fontFamily: "Pretendard",
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.black,
    unselectedItemColor: AppColors.wabizGray,
  ),
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.black,
    surfaceTintColor: AppColors.white,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: BorderSide(
        color: AppColors.wabizGray.shade200,
      ),
      foregroundColor: AppColors.black,
      textStyle: const TextStyle(
        fontSize: 16,
      ),
      minimumSize: const Size(64, 50),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffd4d4d4),
        width: 1.0,
      ),
    ),
    outlineBorder: const BorderSide(
      color: AppColors.primary,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      color: AppColors.wabizGray.shade400,
      fontWeight: FontWeight.w500,
    ),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
