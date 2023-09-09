import 'package:flutter/material.dart';
import 'package:elearning/theme/config.dart' as config;

var kLightTheme = ThemeData(
  canvasColor: Colors.transparent,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  // accentColor: config.Colors().accentColor(1),
  focusColor: config.Colors().mainColor(1),
  hintColor: config.Colors().secondColor(1),
  // accentTextTheme:
  //     TextTheme(headline6: TextStyle(fontFamily: "Red Hat Display")),
  textTheme: TextTheme(
    labelLarge: const TextStyle(
      fontFamily: 'Red Hat Display',
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: Color(0xFFFFFFFF),
    ),
    headlineSmall: TextStyle(
      fontSize: 16.0,
      color: Colors.white.withOpacity(1),
      fontFamily: "Red Hat Display",
    ),
    headlineMedium: TextStyle(
        fontSize: 16,
        fontFamily: "Red Hat Display",
        fontWeight: FontWeight.w500,
        color: config.Colors().accentColor(1)),
    displaySmall: const TextStyle(
        fontSize: 20,
        fontFamily: "Red Hat Display",
        fontWeight: FontWeight.w500,
        color: Colors.black),
    displayMedium: const TextStyle(
        fontSize: 24,
        fontFamily: "Red Hat Display",
        fontWeight: FontWeight.w500,
        color: Colors.black),
    displayLarge: TextStyle(
      fontFamily: 'Red Hat Display',
      color: config.Colors().accentColor(1),
      fontSize: 50,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: config.Colors().secondColor(1),
      fontFamily: "Roboto",
    ),
    titleLarge: TextStyle(
      fontSize: 13.0,
      color: Colors.white.withOpacity(.85),
      fontFamily: "Red Hat Display",
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Red Hat Display',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(.75),
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Red Hat Display',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(1),
    ),
    bodySmall: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: config.Colors().accentColor(1),
    ),
  ),
);

// var kDarkTheme = ThemeData(
//   canvasColor: Colors.transparent,
//   primaryColor: Color(0xFF181818),
//   brightness: Brightness.dark,
//   accentColor: config.Colors().accentDarkColor(1),
//   focusColor: config.Colors().mainDarkColor(1),
//   hintColor: config.Colors().secondDarkColor(1),
//   accentTextTheme: TextTheme(headline6: TextStyle(fontFamily: "Red Hat Display")),
//   textTheme: TextTheme(
//     button: TextStyle(
//       fontFamily: 'Red Hat Display',
//       fontSize: 16,
//       fontWeight: FontWeight.w800,
//       color: Color(0xFF181818),
//     ),
//     headline5: TextStyle(
//       fontSize: 16.0,
//       color: config.Colors().accentDarkColor(1),
//       fontFamily: "Red Hat Display",
//     ),
//     headline4: TextStyle(
//         fontSize: 16,
//         fontFamily: "Red Hat Display",
//         fontWeight: FontWeight.w500,
//         color: config.Colors().accentDarkColor(1)),
//     headline3: TextStyle(
//         fontSize: 20,
//         fontFamily: "Red Hat Display",
//         fontWeight: FontWeight.w500,
//         color: Colors.white),
//     headline2: TextStyle(
//         fontSize: 24,
//         fontFamily: "Red Hat Display",
//         fontWeight: FontWeight.w500,
//         color: Colors.white),
//     headline1: TextStyle(
//       fontFamily: 'Red Hat Display',
//       color: config.Colors().accentDarkColor(1),
//       fontSize: 50,
//       fontWeight: FontWeight.w600,
//     ),
//     subtitle1: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w900,
//       color: config.Colors().secondDarkColor(1),
//       fontFamily: "Roboto",
//     ),
//     headline6: TextStyle(
//       fontSize: 14.0,
//       color: config.Colors().accentDarkColor(.85),
//       fontFamily: "Red Hat Display",
//     ),
//     bodyText2: TextStyle(
//       fontFamily: 'Red Hat Display',
//       fontSize: 14,
//       fontWeight: FontWeight.w500,
//       color: config.Colors().accentDarkColor(.85),
//     ),
//     bodyText1: TextStyle(
//       fontFamily: 'Red Hat Display',
//       fontSize: 22,
//       fontWeight: FontWeight.w500,
//       color: config.Colors().accentDarkColor(1),
//     ),
//     caption: TextStyle(
//       fontFamily: 'Roboto',
//       fontSize: 16,
//       fontWeight: FontWeight.w400,
//       color: config.Colors().accentDarkColor(1),
//     ),
//   ),
// );
