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
  static Color colorItemUnselected = const Color(0x0f616161);
  static Color colorDiscountPercentage = const Color(0xff397099);
  // lightheme

  //textthemelight
  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.w900,
        color: Colors.black,
        letterSpacing: 3,
        fontFamily: "Teletex Regular"),
    headline2: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2,
        fontFamily: "Teletex Regular"),
    headline3: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.5,
    ),
    headline4: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.5,
    ),
    headline5: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.5,
    ),
    headline6: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.2,
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        letterSpacing: 0.8,
        color: Colors.black,
        fontWeight: FontWeight.w300),
    bodyText2: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      letterSpacing: 1.3,
    ),
    button: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      letterSpacing: 1.3,
    ),
    caption: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.grey,
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
    labelStyle: TextStyle(color: Colors.grey),
  );

  // darktheme

  //textthemedark
  static TextTheme darkTextTheme = const TextTheme(
    headline1: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.w900,
        color: Colors.black,
        letterSpacing: 3,
        fontFamily: "Teletex Regular"),
    headline2: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2,
        fontFamily: "Teletex Regular"),
    headline3: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1.5,
    ),
    headline4: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1.5,
    ),
    headline5: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1.5,
    ),
    headline6: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1.2,
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        letterSpacing: 0.8,
        color: Colors.white,
        fontWeight: FontWeight.w300),
    bodyText2: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      letterSpacing: 1.3,
    ),
    button: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      letterSpacing: 1.3,
    ),
    caption: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.grey,
      letterSpacing: 1.3,
    ),
    overline: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      letterSpacing: 1.3,
    ),
  );

//tabbartheme

  static TabBarTheme tabDark = const TabBarTheme(
    labelColor: Colors.white,
  );

  static BottomAppBarTheme tabBottomDark =
      const BottomAppBarTheme(color: Colors.white);

  static InputDecorationTheme inputDarkTheme = const InputDecorationTheme(
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    focusColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.grey),
  );

  static ThemeData light() {
    return ThemeData(
      primaryColorLight: const Color(0x0feeeeee),
      primaryColorDark: Colors.grey[800],
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
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          selectedLabelStyle: TextStyle(color: Colors.black)),
      textTheme: lightTextTheme,
      inputDecorationTheme: inputLightTheme,
      tabBarTheme: tablight,
    );
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
            selectedItemColor: Colors.white,
            unselectedItemColor: Color(0x99FFFFFF),
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(
              color: Color(0x99FFFFFF),
            ),
            selectedLabelStyle: TextStyle(color: Colors.white)),
        textTheme: darkTextTheme,
        inputDecorationTheme: inputDarkTheme,
        tabBarTheme: tabDark);
  }

  //styles
  static TextStyle showPasswordText = TextStyle(
      fontSize: 14,
      color: colorTeal,
      letterSpacing: 1.2,
      fontWeight: FontWeight.bold);

  static TextStyle discountTitleItalic = const TextStyle(
      fontFamily: "Filosofia Italic",
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static TextStyle discountTextPercentage = TextStyle(
      fontFamily: "Teletex Regular",
      fontSize: 22,
      letterSpacing: 1.5,
      color: colorDiscountPercentage,
      fontWeight: FontWeight.bold);

  static TextStyle sortText = const TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.teal,
    letterSpacing: 1.2,
  );
}
