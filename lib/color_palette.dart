import 'package:flutter/material.dart';

class ColorPalette {
  static const Color screenBackColor = Color(0xff232241);

  static const Color buttonsBackgroundColor = Color(0xff3b3b52);

  static const Color titleColor = Colors.white;

  static const Color subtitleColor = Colors.white38;

  static const LinearGradient buttonGradient = LinearGradient(colors: [
    Color(0xff322888),
    Color(0xff492C94),
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static const LinearGradient backgroundGradient = LinearGradient(colors: [
    Color(0xff362349),
    Color(0xff232241),
    Color(0xff1e223d),
  ], begin: Alignment.topLeft, end: Alignment.center);
}
