import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeCustoms {
  static final themeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.brown,
    accentColor: Colors.brown[400],
    buttonColor: Colors.brown,
    errorColor: Colors.redAccent,
    // backgroundColor: Colors.black87,
    primaryColorLight: Colors.brown,
    fontFamily: 'Cairo',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: CustomColors.darkBlue,
      ),
      headline2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        color: CustomColors.darkBlue,
      ),
      headline3: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w900,
        color: CustomColors.darkBlue,
      ),
      headline4: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w900,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.brown),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(4.0)),
    ),
  );
}
