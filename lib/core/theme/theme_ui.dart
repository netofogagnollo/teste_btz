import 'package:flutter/material.dart';

class ThemeUI {
  ThemeUI._();

  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 223, 233, 225),
    primaryColor: const Color(0xFF007D21),
    primaryColorDark: const Color(0xFF00343F),
    fontFamily: 'mplus1',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: 'mplus1',
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      selectedLabelStyle: textButton,
      unselectedItemColor: Colors.grey[400],
      unselectedIconTheme: const IconThemeData(color: Colors.black),
    ),
  );

  static TextStyle textButton =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  static TextStyle textNavigattor =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
  static TextStyle textInput =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
  static TextStyle textMini =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
}

// ignore: constant_identifier_names
const TitleTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
