import 'package:flutter/material.dart';
import 'package:preferences/src/pages/home_page.dart';
import 'package:preferences/src/pages/settings_page.dart';
import 'package:preferences/src/share_preferences/preferences_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new Preferences();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preferences',
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (BuildContext context) => HomePage(),
          SettingsPage.routeName: (BuildContext context) => SettingsPage(),
        });
  }
}
