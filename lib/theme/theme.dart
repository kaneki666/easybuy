import 'package:flutter/material.dart';

class EasyBuyTheme {
  static double borderRadiusS = 5;
  static double borderRadiusM = 8;
  static double borderRadiusL = 12;

  static double paddingS = 5;
  static double paddingM = 10;
  static double paddingL = 15;
  static double paddingXL = 15;

  //colors
  static Color colorTeal = const Color(0xff00b27f);
  static Color colorDarkButton = const Color(0xff424242);
  static Color colorWhiteButton = const Color(0x0fffffff);
  // lightheme

  //textthemelight
  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2,
        fontFamily: "Teletex Regular"),
    headline2: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        letterSpacing: 1.8,
        fontFamily: "Teletex Regular"),
    headline3: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.8,
    ),
    button: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 1.3,
    ),
  );

//tabbartheme
  static TabBarTheme tablight = const TabBarTheme(
    labelColor: Colors.black,
  );

  static InputDecorationTheme inputLightTheme = const InputDecorationTheme(
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    focusColor: Colors.grey,
    hintStyle: TextStyle(color: Colors.grey),
  );

  // darktheme

  //textthemedark
  static TextTheme darkTextTheme = const TextTheme(
    headline1: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2,
        fontFamily: "Teletex Regular"),
    headline2: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.8,
        fontFamily: "Teletex Regular"),
    headline3: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1.8,
    ),
    button: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 1.3,
    ),
  );

//tabbartheme

  static TabBarTheme tabDark = const TabBarTheme(
    labelColor: Colors.white,
  );

  static InputDecorationTheme inputDarkTheme = const InputDecorationTheme(
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    focusColor: Colors.grey,
    hintStyle: TextStyle(color: Colors.grey),
  );

  static ThemeData light() {
    return ThemeData(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              return Colors.black;
            },
          ),
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
        textTheme: lightTextTheme,
        inputDecorationTheme: inputLightTheme,
        tabBarTheme: tablight);
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColorLight: Colors.grey[800],
        primaryColorDark: Colors.white,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey[900],
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
        textTheme: darkTextTheme,
        inputDecorationTheme: inputDarkTheme,
        tabBarTheme: tabDark);
  }
}
