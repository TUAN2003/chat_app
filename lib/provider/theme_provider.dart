import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class ThemeNotifier extends Notifier<String> {
  @override
  String build() {
    return Hive.box('settings').get('theme') ?? 'light-theme';
  }

  void changeTheme(String nameTheme) {
    state = nameTheme;
    Hive.box('settings').put('theme', nameTheme);
  }
}

final themeProvider = NotifierProvider<ThemeNotifier, String>(() {
  return ThemeNotifier();
});
