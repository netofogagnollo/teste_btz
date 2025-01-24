import 'package:flutter/material.dart';

class Styles {
  InputDecoration decoration() {
    return InputDecoration(
      hintStyle: const TextStyle(color: Color(0xFF4B4D73), fontSize: 1),
      fillColor: Colors.white,
      filled: true,
      contentPadding: const EdgeInsets.only(left: 2, top: 2, bottom: 2),
      focusColor: const Color.fromRGBO(176, 176, 176, 1),
      prefixIconColor: const Color.fromRGBO(176, 176, 176, 1),
      iconColor: const Color.fromRGBO(176, 176, 176, 1),
      counterText: '',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(176, 176, 176, 1),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(176, 176, 176, 1),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(176, 176, 176, 1),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(176, 176, 176, 1),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: const BorderSide(
          color: Color.fromRGBO(176, 176, 176, 1),
        ),
      ),
    );
  }
}
