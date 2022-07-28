import 'package:flutter/material.dart';

Color dark_gray = Color.fromARGB(255, 24, 24, 34);
Color light_gray = Color.fromARGB(255, 35, 34, 49);
Color yellow = Color.fromARGB(255, 251, 169, 51);
Color white = Colors.white;
Color light_white = Colors.white54;
Color black = Colors.black;
ThemeData lighttheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: white,
  appBarTheme: AppBarTheme(
    backgroundColor: white,
    foregroundColor: black,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(color: black),
    headline2: TextStyle(color: black),
    bodyText2: TextStyle(color: black),
    subtitle1: TextStyle(color: black),
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
);

ThemeData darktheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: dark_gray,
  textTheme: TextTheme(
    headline1: TextStyle(color: white),
    headline2: TextStyle(color: white),
    bodyText2: TextStyle(color: white),
    subtitle1: TextStyle(color: white),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: dark_gray,
    foregroundColor: white,
    elevation: 0,
  ),
  iconTheme: IconThemeData(
    color: Colors.white54,
  ),
);

ThemeData theme = darktheme;
