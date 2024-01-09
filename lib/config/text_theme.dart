import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static TextTheme lightTextTheme = buildTextTheme(ThemeData.light().textTheme);
  static TextTheme darkTextTheme = buildTextTheme(ThemeData.dark().textTheme);
}

TextTheme buildTextTheme(TextTheme base) {
  return base.copyWith(
    displayLarge: base.displayLarge?.copyWith(
      fontSize: 48.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'OpenSans',
    ),
    displayMedium: base.displayMedium?.copyWith(
      fontSize: 44.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'OpenSans',
    ),
    displaySmall: base.displaySmall?.copyWith(
      fontSize: 40.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    ),
    headlineLarge: base.headlineLarge?.copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'OpenSans',
    ),
    headlineMedium: base.headlineMedium?.copyWith(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'OpenSans',
    ),
    headlineSmall: base.headlineSmall?.copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    ),
    titleLarge: base.titleLarge?.copyWith(
      fontSize: 26.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'OpenSans',
    ),
    titleMedium: base.titleMedium?.copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'OpenSans',
    ),
    titleSmall: base.titleSmall?.copyWith(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'OpenSans',
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      fontFamily: 'OpenSans',
    ),
    bodySmall: base.bodySmall?.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'OpenSans',
    ),
    labelMedium: base.labelMedium?.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'OpenSans',
    ),
    labelSmall: base.labelSmall?.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    ),
  );
}
