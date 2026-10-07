import 'package:flutter/material.dart';
import 'package:vault_chain/core/utils/util.dart';

class AppTheme {
  static ThemeData get lightTheme {
    const errorColor = Colors.red;
    const onErrorColor = Colors.redAccent;

    return ThemeData(
      dividerTheme: DividerThemeData(color: lightBorderColor()),
      fontFamily: 'SFPro',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent,
        surface: Colors.white,
        primaryContainer: customLightContainer(),
        onPrimaryContainer: customLightOnContainer(),
        error: errorColor,
        onError: onErrorColor,
      ),
      cardTheme: CardThemeData(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            style: BorderStyle.solid,
            color: lightBorderColor(),
            width: 2,
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: lightBorderColor(), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: lightBorderColor(), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: errorColor, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: onErrorColor, width: 2),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 48)),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(2),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 48)),
          elevation: WidgetStateProperty.all(1),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    const errorColor = Colors.red;
    const onErrorColor = Colors.redAccent;

    return ThemeData.dark(useMaterial3: true).copyWith(
      dividerTheme: DividerThemeData(color: darkBorderColor()),
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'SFPro'),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent,
        brightness: Brightness.dark,
        primaryContainer: customDarkContainer(),
        onPrimaryContainer: customDarkOnContainer(),
        error: errorColor,
        onError: onErrorColor,
      ),
      cardTheme: CardThemeData(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            style: BorderStyle.solid,
            color: darkBorderColor(),
            width: 2,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: darkBorderColor(), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: darkBorderColor(), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: errorColor, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: onErrorColor, width: 2),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 48)),
          elevation: WidgetStateProperty.all(2),
          backgroundColor: const WidgetStatePropertyAll(Color(0xFF0079FE)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 48)),
          elevation: WidgetStateProperty.all(2),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
