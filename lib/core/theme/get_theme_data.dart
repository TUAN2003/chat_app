import 'package:chat_app/core/theme/dark_theme.dart';
import 'package:chat_app/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class GetThemeData {
  GetThemeData._();
  static Map<String, ThemeData> get _themeDatas => {
    'light-theme': lightTheme,
    'dark-theme': darkTheme,
  };

  static ThemeData getThemeData(String key) => _themeDatas[key]!;
}
