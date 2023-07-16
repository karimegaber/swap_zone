import 'package:flutter/material.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

enum AppThemeMode {
  light,
  dark,
}

class ThemesManager {
  /// *** Light Theme *** ///
  static ThemeData appTheme({required AppThemeMode mode}) {
    return ThemeData(
      // Scaffold background color
      scaffoldBackgroundColor: ColorsManager.white,

      // App Bar
      appBarTheme: const AppBarTheme(
        elevation: AppSize.s0,
        color: ColorsManager.white,
        centerTitle: true,
      ),

      // Navigation Bar Theme
      navigationBarTheme: const NavigationBarThemeData(elevation: AppSize.s0),
    );
  }
}
