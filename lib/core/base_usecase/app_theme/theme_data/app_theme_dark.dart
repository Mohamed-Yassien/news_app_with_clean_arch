import 'package:flutter/material.dart';
import 'package:usama_elgendy_cclean_arch/core/base_usecase/app_theme/app_colors/app_colors_dark.dart';

ThemeData getAppDarkTheme() => ThemeData(
  useMaterial3: true,
       colorScheme: const ColorScheme.dark(background: Colors.black12 ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: AppColorsDark.appBarTitleColor,
        ),
        iconTheme: IconThemeData(
          color: AppColorsDark.appBarIconColor,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColorsDark.textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColorsDark.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: AppColorsDark.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        
      ),
      cardTheme: const CardTheme(
        color: AppColorsDark.cardColor,
      ),
    );
