import 'package:easybuy/screens/splash/splash.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = EasyBuyTheme.light();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const SplashScreen(),
    );
  }
}
