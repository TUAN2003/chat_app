import 'package:flutter/material.dart';
import 'package:chat_app/core/constant/app_color.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.black,

  colorScheme: const ColorScheme.dark(
    primary: AppColor.blue500,
    surface: AppColor.neutral700,
    onSurface: AppColor.neutral50,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColor.neutral50),
    bodyMedium: TextStyle(color: AppColor.neutral100),
    bodySmall: TextStyle(color: AppColor.neutral300),
  ),

  dividerColor: AppColor.neutral400,

  cardTheme: const CardThemeData(color: AppColor.blue800, elevation: 0),

  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColor.neutral700,
  ),

  dialogTheme: const DialogThemeData(backgroundColor: AppColor.neutral700),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColor.white.withAlpha((255 * 0.2).round()),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.neutral400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.neutral400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColor.lightBlue500),
    ),
  ),
);
