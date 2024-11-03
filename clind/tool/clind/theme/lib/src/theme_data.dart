import 'package:core_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_theme/gen/fonts.gen.dart';
import 'package:tool_clind_theme/theme.dart';

class ClindThemeData extends ICoreThemeData {
  const ClindThemeData({
    required super.textTheme,
  });

  factory ClindThemeData.light() {
    return const ClindThemeData(
      textTheme: ClindTextTheme(),
    );
  }

  factory ClindThemeData.dark() {
    return const ClindThemeData(
      textTheme: ClindTextTheme(),
    );
  }
}

class ClindTextTheme extends ICoreTextTheme {
  const ClindTextTheme();
}

extension on ClindTextTheme {
  TextStyle defaultTextStyleForSize(double size) => TextStyle(
        package: kToolClindThemePackageName,
        fontFamily: FontFamily.pretendard,
        fontSize: size,
        height: size / size,
      );
}

extension ClindTextThemeDefaultExtension on ClindTextTheme {
  // w600
  TextStyle get default17SemiBold => defaultTextStyleForSize(17.0).toSemiBold();

  TextStyle get default16SemiBold => defaultTextStyleForSize(16.0).toSemiBold();

  TextStyle get default15SemiBold => defaultTextStyleForSize(15.0).toSemiBold();

  // w500
  TextStyle get default17Medium => defaultTextStyleForSize(17.0).toMedium();

  TextStyle get default15Medium => defaultTextStyleForSize(15.0).toMedium();

  TextStyle get default14Medium => defaultTextStyleForSize(14.0).toMedium();

  TextStyle get default13Medium => defaultTextStyleForSize(13.0).toMedium();

  TextStyle get default12Medium => defaultTextStyleForSize(12.0).toMedium();

  // w400
  TextStyle get default22Regular => defaultTextStyleForSize(22.0).toRegular();

  TextStyle get default17Regular => defaultTextStyleForSize(17.0).toRegular();

  TextStyle get default16Regular => defaultTextStyleForSize(16.0).toRegular();

  TextStyle get default15Regular => defaultTextStyleForSize(15.0).toRegular();

  TextStyle get default14Regular => defaultTextStyleForSize(14.0).toRegular();

  TextStyle get default13Regular => defaultTextStyleForSize(13.0).toRegular();

  TextStyle get default12Regular => defaultTextStyleForSize(12.0).toRegular();

  TextStyle get default11Regular => defaultTextStyleForSize(11.0).toRegular();

  // w300
  TextStyle get default13Light => defaultTextStyleForSize(13.0).toLight();

  TextStyle get default11Light => defaultTextStyleForSize(11.0).toLight();
}

extension on ClindTextTheme {
  TextStyle poppinsTextStyleForSize(double size) =>
      defaultTextStyleForSize(size).copyWith(
        fontFamily: FontFamily.poppins,
      );
}

extension ClindTextThemePoppinsExtension on ClindTextTheme {
  // w700
  TextStyle get poppins30Bold => poppinsTextStyleForSize(30.0).toBold();

  TextStyle get poppins18Bold => poppinsTextStyleForSize(18.0).toBold();
}

extension on TextStyle {
  TextStyle toBold() => copyWith(fontWeight: FontWeight.w700);

  TextStyle toSemiBold() => copyWith(fontWeight: FontWeight.w600);

  TextStyle toMedium() => copyWith(fontWeight: FontWeight.w500);

  TextStyle toRegular() => copyWith(fontWeight: FontWeight.w400);

  TextStyle toLight() => copyWith(fontWeight: FontWeight.w300);
}

extension ClindThemeDataExtension on BuildContext {
  ClindThemeData get themeData {
    return ClindTheme.of(this);
  }

  ClindTextTheme get textTheme {
    return themeData.textTheme as ClindTextTheme;
  }
}
