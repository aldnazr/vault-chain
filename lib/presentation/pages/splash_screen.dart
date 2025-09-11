import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Future<void> _navigateAfterDelay(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final isLogin = prefs.getBool('isLogin');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (context.mounted) {
          if (isLogin ?? false) {
            Navigator.pushReplacementNamed(context, '/home');
          } else {
            Navigator.pushReplacementNamed(context, '/login');
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _navigateAfterDelay(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app_logo.png', width: 200),
            SizedBox(height: 38),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
