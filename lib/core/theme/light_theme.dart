import 'package:flutter/material.dart';
import 'package:chat_app/core/constant/app_color.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.white,

  colorScheme: const ColorScheme.light(
    primary: AppColor.blue500,
    surface: AppColor.white,
    onSurface: AppColor.neutral900,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColor.neutral900),
    bodyMedium: TextStyle(color: AppColor.neutral500),
    bodySmall: TextStyle(color: AppColor.neutral100),
  ),

  dividerColor: AppColor.neutral100,

  cardTheme: const CardThemeData(color: AppColor.white, elevation: 0),

  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: AppColor.white),

  dialogTheme: const DialogThemeData(backgroundColor: AppColor.white),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColor.neutral900.withAlpha((255 * 0.05).round()),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.neutral100),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.neutral100),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.blue500),
    ),
  ),
);
