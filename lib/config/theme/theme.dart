import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class AppTheme {
  ThemeData get lightTheme {
    final baseTheme = ThemeData.light();

    const primaryColor = Colors.amber;
    final secondaryColor = Colors.amber.shade700;

    final colorScheme = baseTheme.colorScheme.copyWith(
      primary: primaryColor,
      onPrimary: Colors.black,
      secondary: secondaryColor,
      onSecondary: Colors.black,
      surfaceTint: Colors.red,
    );

    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: colorScheme,
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: primaryColor.shade800,
      ),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: secondaryColor,
      ),
    );
  }
}
