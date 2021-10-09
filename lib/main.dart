import 'package:easybuy/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easybuy/screens/splash/splash.dart';
import 'package:easybuy/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData theme = EasyBuyTheme.light();

  Future<void> setTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("theme", "light");
  }

  Future<void> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    String themeName = prefs.getString("theme") ?? "null";

    if (themeName == "light" || themeName == "null") {
      setState(() {
        if (mounted) {
          theme = EasyBuyTheme.light();
        }
      });
    } else {
      setState(() {
        if (mounted) {
          theme = EasyBuyTheme.dark();
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setTheme();
    getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
