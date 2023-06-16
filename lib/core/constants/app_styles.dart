import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle get mainHeading => const TextStyle(
      fontSize: 20,
      color: Colors.red); //or var mainHeading or dynamic mainHeading
  static TextStyle get subTitle =>
      const TextStyle(fontSize: 18, color: Colors.blue);
  static TextStyle get emailHeading =>
      const TextStyle(fontSize: 20, color: Colors.red);
  static TextStyle get emailTitle =>
      const TextStyle(fontSize: 18, color: Colors.blue);
  static TextStyle get contactHeading =>
      const TextStyle(fontSize: 20, color: Colors.red);
  static TextStyle get contactTitle =>
      const TextStyle(fontSize: 18, color: Colors.blue);
  static TextStyle get dobHeading =>
      const TextStyle(fontSize: 20, color: Colors.red);
  static TextStyle get dobTitle =>
      const TextStyle(fontSize: 18, color: Colors.blue);
}
