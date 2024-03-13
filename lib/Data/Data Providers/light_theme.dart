import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'CenturyGothic',
  scaffoldBackgroundColor: Colors.white,

  // primarySwatch: ColorResources.primaryColor,
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: ColorResources.primaryColor,
      ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateColor.resolveWith((states) => ColorResources.textColor),
  ),
  textTheme: const TextTheme(
    headlineSmall: TextStyle(fontSize: 18.0, color: ColorResources.textColor),
    headlineMedium: TextStyle(fontSize: 28.0, color: ColorResources.textColor),
    displaySmall: TextStyle(fontSize: 18.0, color: ColorResources.textColor),
    displayMedium:
        TextStyle(fontSize: 28.0, color: ColorResources.primaryColor),
    displayLarge: TextStyle(fontSize: 36.0, color: ColorResources.textColor),
    titleMedium: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        color: ColorResources.textColor),
    titleLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.normal,
        color: ColorResources.textColor),
    titleSmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ColorResources.textColor),
    bodyMedium: TextStyle(fontSize: 21.0, color: ColorResources.textColor),
    bodyLarge: TextStyle(fontSize: 14.0, color: ColorResources.textColor),
    bodySmall: TextStyle(fontSize: 14.0, color: ColorResources.textColor),
  ),
);
