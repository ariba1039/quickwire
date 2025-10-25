import 'package:flutter/material.dart';
import 'package:quickwire/domain/constants/app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldLight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonlightmode,
      ),
    ),

    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textLightmode),
      bodyLarge: TextStyle(color: AppColors.textLightmode),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttondarkmode,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textDarkmode),
      bodyLarge: TextStyle(color: AppColors.textDarkmode),
    ),
  );
}
