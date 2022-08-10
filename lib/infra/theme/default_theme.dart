import 'package:flutter/material.dart';

import 'default_colors.dart';

class CustomThemes {
  static final defaultTheme = ThemeData(
    primaryColor: AppColors.backgroundDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    backgroundColor: AppColors.backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    cardColor: AppColors.backgroundDark,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
  );
}
