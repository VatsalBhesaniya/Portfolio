import 'package:flutter/material.dart';
import 'package:portfolio/config/text_theme.dart';

abstract class AppTheme {
  static ThemeData lightTheme() {
    final ThemeData base = ThemeData.light();
    return _buildLightTheme(base);
  }

  static ThemeData darkTheme() {
    final ThemeData base = ThemeData.dark();
    return _buldDarkTheme(base);
  }

  static ThemeData _buildLightTheme(ThemeData base) {
    return base.copyWith(
      textTheme: AppTextTheme.lightTextTheme,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff6750a4),
        onPrimary: Color(0xffffffff),
        primaryContainer: Color(0xffe9ddff),
        onPrimaryContainer: Color(0xff22005d),
        secondary: Color(0xff625b71),
        onSecondary: Color(0xffffffff),
        secondaryContainer: Color(0xffe8def8),
        onSecondaryContainer: Color(0xff1e192b),
        tertiary: Color(0xff7e5260),
        onTertiary: Color(0xffffffff),
        tertiaryContainer: Color(0xffffd9e3),
        onTertiaryContainer: Color(0xff31101d),
        error: Color(0xffba1a1a),
        onError: Color(0xffffffff),
        errorContainer: Color(0xffffdad6),
        onErrorContainer: Color(0xff410002),
        background: Color(0xfffffbff),
        onBackground: Color(0xff1c1b1e),
        surface: Color(0xfffffbff),
        onSurface: Color(0xff1c1b1e),
        outline: Color(0xff7a757f),
        surfaceVariant: Color(0xffe7e0eb),
        onSurfaceVariant: Color(0xff49454e),
      ),
    );
  }

  static ThemeData _buldDarkTheme(ThemeData base) {
    return base.copyWith(
      textTheme: AppTextTheme.darkTextTheme,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xffcfbcff),
        onPrimary: Color(0xff381e72),
        primaryContainer: Color(0xff4f378a),
        onPrimaryContainer: Color(0xffe9ddff),
        secondary: Color(0xffcbc2db),
        onSecondary: Color(0xff332d41),
        secondaryContainer: Color(0xff4a4458),
        onSecondaryContainer: Color(0xffe8def8),
        tertiary: Color(0xffefb8c8),
        onTertiary: Color(0xff4a2532),
        tertiaryContainer: Color(0xff633b48),
        onTertiaryContainer: Color(0xffffd9e3),
        error: Color(0xffffb4ab),
        onError: Color(0xff690005),
        errorContainer: Color(0xff93000a),
        onErrorContainer: Color(0xffffdad6),
        background: Color(0xff1c1b1e),
        onBackground: Color(0xffe6e1e6),
        surface: Color(0xff1c1b1e),
        onSurface: Color(0xffe6e1e6),
        outline: Color(0xff948f99),
        surfaceVariant: Color(0xff49454e),
        onSurfaceVariant: Color(0xffcac4cf),
      ),
    );
  }
}
