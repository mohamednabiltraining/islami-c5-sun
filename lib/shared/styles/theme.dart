
import 'package:flutter/material.dart';

class AppTheme {
  static const Color secColor = Color(0xFFB7935F);
  static const Color goldColor = Color(0xFFFACC1D);
  static const Color darkColor = Color(0xFF000000);
  static const Color lightColor = Color(0xFFFFFFFF);
  static const Color secColorLight = Color(0xFFB7935F);

  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: darkColor
      ),
      iconTheme: IconThemeData(
        color: darkColor
      ),
      actionsIconTheme: IconThemeData(
        color: darkColor
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkColor,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: darkColor,
        fontSize: 22
      ),
      headlineLarge: TextStyle(
        color: darkColor,
        fontSize: 18
      ),
      labelMedium: TextStyle(
        color: darkColor,
        fontSize: 18
      ),
      caption: TextStyle(
        color: darkColor,
        fontSize: 16
      )
    )
  );

  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: lightColor
      ),
      iconTheme: IconThemeData(
        color: lightColor
      ),
      actionsIconTheme: IconThemeData(
        color: lightColor
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: goldColor,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: lightColor,
        fontSize: 22
      ),
      headlineLarge: TextStyle(
        color: lightColor,
        fontSize: 18
      ),
      labelMedium: TextStyle(
        color: lightColor,
        fontSize: 18
      ),
      caption: TextStyle(
        color: lightColor,
        fontSize: 16
      )
    )
  );
}