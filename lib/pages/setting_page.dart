import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vault_chain/services/providers/theme_provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void _showAlertDialog(BuildContext context) {
    final themeProvider = context.read<ThemeProvider>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Select Theme',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioGroup<ThemeMode>(
                groupValue: themeProvider.themeMode,
                onChanged: (ThemeMode? value) {
                  setState(() {
                    themeProvider.toggleTheme(value ?? ThemeMode.system);
                  });
                  Navigator.of(context).pop();
                },
                child: const Column(
                  children: [
                    RadioListTile(title: Text('Light'), value: ThemeMode.light),
                    RadioListTile(title: Text('Dark'), value: ThemeMode.dark),
                    RadioListTile(
                      title: Text('System'),
                      value: ThemeMode.system,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _logout(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Scaffold(
      appBar: AppBar(title: Text('Pengaturan')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ListTile(
              minTileHeight: 70.0,
              onTap: () => _showAlertDialog(context),
              leading: Icon(
                brightness == Brightness.light
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
              title: Text('Theme'),
              subtitle: Text('Atur tema aplikasi'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              minTileHeight: 70.0,
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Keluar dari aplikasi'),
              onTap: () {
                _logout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
