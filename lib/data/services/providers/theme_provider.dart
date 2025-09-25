import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vault_chain/core/utils/pref_key.dart';

class ThemeProvider extends ChangeNotifier {
  final _themeKey = PrefKey.themeMode;
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  ThemeProvider() {
    _loadTheme();
  }

  Future<void> toggleTheme(ThemeMode themeMode) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(_themeKey.key, themeMode.name);
    _themeMode = themeMode;
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final pref = await SharedPreferences.getInstance();
    final saved = pref.getString(_themeKey.key);

    _themeMode = switch (saved) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system,
    };

    notifyListeners();
  }
}
