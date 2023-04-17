import 'package:flutter/material.dart';

Color kMainColor = const Color(0xffFBB03B);
Color k2MainColor = const Color(0xffF15A25);
Color kBTextColor = Colors.white;
Color kWhiteColor = Colors.white;
Color kSubTextColor = Colors.grey;
Color kBlackColor = Colors.black;
Color kRedColor = Colors.red;
Color kDarkColor = Colors.grey.shade900;
Color kHighlightColor = Colors.grey.shade100;
Color kLoadingBackColor = Colors.white;
Color kDarkLoadingBackColor = Colors.black;


class Constants {
  static String appName = "Plant";

  static String userName = 'Manojit Mullick';

  //Colors for theme
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color? lightAccent = kMainColor;
  static Color darkAccent = Colors.white;
  static Color lightBG = Colors.grey.shade200;
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    textTheme: const TextTheme(
      bodyText2: TextStyle(fontSize: 18, color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: lightBG,
      elevation: 0,
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ).headline6,
    ),
    useMaterial3: true,
  );

  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   backgroundColor: darkBG,
  //   primaryColor: darkPrimary,
  //   accentColor: darkAccent,
  //   scaffoldBackgroundColor: darkBG,
  //   textTheme: const TextTheme(
  //     bodyText2: TextStyle(fontSize: 18),
  //   ),
  //   appBarTheme: AppBarTheme(
  //     backgroundColor: Colors.black,
  //     foregroundColor: Colors.white,
  //     elevation: 0,
  //     toolbarTextStyle: TextTheme(
  //       headline6: TextStyle(
  //         color: lightBG,
  //         fontSize: 20.0,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ).bodyText2,
  //     titleTextStyle: TextTheme(
  //       headline6: TextStyle(
  //         color: lightBG,
  //         fontSize: 20.0,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ).headline6,
  //   ),
  //   useMaterial3: true,
  // );
}
