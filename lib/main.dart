import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/presentation/pages/coin_detail_page.dart';
import 'package:vault_chain/presentation/pages/home_screen.dart';
import 'package:vault_chain/presentation/pages/login_page.dart';
import 'package:vault_chain/presentation/pages/register_page.dart';
import 'package:vault_chain/presentation/pages/setting_page.dart';
import 'package:vault_chain/presentation/pages/splash_screen.dart';
import 'package:vault_chain/data/services/providers/detail_provider.dart';
import 'package:vault_chain/data/services/providers/filter_provider.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/data/services/providers/scroll_provider.dart';
import 'package:vault_chain/data/services/providers/theme_provider.dart';

final ValueNotifier<Key> appKeyNotifier = ValueNotifier(Key('initial'));

void main() {
  runApp(
    ValueListenableBuilder<Key>(
      valueListenable: appKeyNotifier,
      builder: (context, key, _) => ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
        child: MyApp(key: key),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MarketProvider()..init()),
        ChangeNotifierProvider(
          create: (_) => DetailProvider()..init(),
          child: CoinDetailPage(),
        ),
        ChangeNotifierProvider(create: (_) => FilterProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const HomeScreen(),
          '/register': (context) => const RegisterPage(),
          '/login': (context) => const LoginPage(),
          '/detail_page': (context) => const CoinDetailPage(),
          '/setting': (context) => const SettingPage(),
        },
        themeMode: themeProvider.themeMode,
        darkTheme: ThemeData.dark(useMaterial3: true),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
            surface: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 224, 224, 224),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 224, 224, 224),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 79, 179, 121),
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            labelStyle: TextStyle(color: Colors.grey[700]),
            errorStyle: TextStyle(color: Colors.red),
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.all(Size(double.maxFinite, 48)),
              foregroundColor: WidgetStateProperty.all(Colors.white),
              elevation: WidgetStateProperty.all<double>(2),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.all(Size(double.maxFinite, 48)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
