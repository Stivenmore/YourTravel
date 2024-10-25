import 'package:flutter/material.dart';

class ThemeTypografy extends TextTheme {
  final ThemeMode mode;
  const ThemeTypografy({required this.mode});

  final Color titleColorWhite = const Color(0xffF0F0F0);
  final Color bodyColorWhite = const Color(0xffE8E8E8);
  final Color titleColorBlack = const Color(0xff212529);
  final Color bodyColorBlack = const Color(0xff2D3136);

  bool get isDark => mode == ThemeMode.dark;

  @override
  TextStyle? get bodyLarge => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? bodyColorWhite : bodyColorBlack,
      );

  @override
  TextStyle? get bodyMedium => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: isDark ? bodyColorWhite : bodyColorBlack,
      );

  @override
  TextStyle? get bodySmall => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: isDark ? bodyColorWhite : bodyColorBlack,
      );

  @override
  TextStyle? get titleLarge => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? titleColorWhite : titleColorBlack,
      );

  @override
  TextStyle? get titleMedium => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: isDark ? titleColorWhite : titleColorBlack,
      );

  @override
  TextStyle? get titleSmall => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: isDark ? titleColorWhite : titleColorBlack,
      );

  @override
  TextStyle? get displayLarge => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? titleColorWhite : titleColorBlack,
      );

  @override
  TextStyle? get displayMedium => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: isDark ? titleColorWhite : titleColorBlack,
      );

  @override
  TextStyle? get displaySmall => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: isDark ? titleColorWhite : titleColorBlack,
      );
}
