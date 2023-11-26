import 'package:flutter/material.dart';

class FTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
      displayLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.black),
      displayMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          color: Colors.black),
      headlineSmall: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 22.0,
          fontWeight: FontWeight.w400,
          color: Colors.black),
      headlineMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.black),
      titleLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Colors.black),
      bodyMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: Colors.black));
}
