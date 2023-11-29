import 'package:flutter/material.dart';
import 'package:usama_elgendy_cclean_arch/core/base_usecase/app_theme/app_colors/app_colors_light.dart';

ThemeData getAppLightTheme() => ThemeData(
      useMaterial3: true,
     colorScheme: const ColorScheme.light(background: Colors.white ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: AppColorsLight.appBarTitleColor,
        ),
        iconTheme: IconThemeData(
          color: AppColorsLight.appBarIconColor,
        ),
      ),
      cardColor: AppColorsLight.cardColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColorsLight.textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColorsLight.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: AppColorsLight.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      cardTheme: CardTheme(
        color: AppColorsLight.cardColor,
      ),
    );
