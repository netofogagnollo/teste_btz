// ignore_for_file: deprecated_member_use

import 'package:btz/configs/colors.dart';
import 'package:flutter/material.dart';

// Azul InfoSolutions #2F54A3
var infoBlue = const Color.fromRGBO(47, 84, 163, 1); //#2F54A3
var infoBlueLight = const Color.fromRGBO(69, 121, 231, 1); // #4579e7

// Laranja iCeasa
var infoLaranjaEscuro = const Color.fromRGBO(245, 134, 52, 1); // #F58634
var infoLaranjaClaro = const Color.fromRGBO(254, 195, 43, 1); // #FEC32b

ThemeData themeDefault = ThemeData(
  useMaterial3: false,
  platform: TargetPlatform.iOS,
  appBarTheme: const AppBarTheme(
    color: AppColors.officialGrey,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: AppColors.white,
      fontSize: 20,
      // fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      letterSpacing: -0.8,
    ),
  ),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(primary: AppColors.officialGrey),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.infoBlue,
      disabledForegroundColor: AppColors.white.withOpacity(0.8),
      disabledBackgroundColor: AppColors.infoBlue.withOpacity(0.7),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: AppColors.infoBlue,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(),
  ),
  checkboxTheme: CheckboxThemeData(
    // The color that fills the checkbox
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (!states.contains(WidgetState.selected)) {
        return AppColors.transparent;
      }
      return null;
    }),
    //The color to use for the check icon when this checkbox is checked
    checkColor: WidgetStateProperty.all(AppColors.white),
    //shape: CircleBorder(), // diplay checkbox with circle shape
    // shape: RoundedRectangleBorder(
    //   borderRadius:
    //       BorderRadius.circular(5), // or make the border slightly rounded
    // ),
    side: WidgetStateBorderSide.resolveWith(
      (states) =>
          const BorderSide(width: 1.3, color: Color.fromARGB(255, 54, 52, 52)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
    fillColor: Colors.grey.shade100,
    focusColor: Colors.grey.shade200,
    filled: true,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: AppColors.vermelhoGeral,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: AppColors.vermelhoGeral,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.702),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: AppColors.infoBlue,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: Color.fromRGBO(189, 189, 189, 1),
        width: 1.0,
      ),
    ),
    hintStyle: const TextStyle(
      color: Color.fromRGBO(224, 224, 224, 1),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    // floatingLabelStyle: TextStyle(
    //   color: Colors.grey.shade300,
    // ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return const Color.fromRGBO(189, 189, 189, 1);
        }
        if (states.contains(WidgetState.selected)) return AppColors.infoBlue;
        return AppColors.white; // Default color
      },
    ),
    trackColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return const Color.fromRGBO(224, 224, 224, 1);
        }
        if (states.contains(WidgetState.selected)) {
          return AppColors.infoBlue.withOpacity(0.5);
        }
        return const Color.fromRGBO(189, 189, 189, 1);
      },
    ),
  ),
);

TextStyle buttonTextStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  letterSpacing: -0.8,
);
