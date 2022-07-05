import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class AppTheme {
  ThemeData get lightTheme {
    const primaryColor = Colors.amber;
    final secondaryColor = Colors.amber.shade700;

    final baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: primaryColor,
        onPrimary: Colors.black,
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: primaryColor.shade800,
      ),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
