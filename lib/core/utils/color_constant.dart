import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray51 = fromHex('#f4f8fd');

  static Color bluegray50 = fromHex('#eaecf0');

  static Color red700 = fromHex('#d03329');

  static Color bluegray100 = fromHex('#d6dae2');

  static Color indigoA200 = fromHex('#406dee');

  static Color gray50 = fromHex('#f8f9fa');

  static Color bluegray900 = fromHex('#262b35');

  static Color deepPurple50 = fromHex('#e7e3fb');

  static Color bluegray700 = fromHex('#424c5d');

  static Color bluegray600 = fromHex('#5f6c86');

  static Color black900 = fromHex('#000000');

  static Color bluegray500 = fromHex('#73798c');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray200 = fromHex('#bac1ce');

  static Color deepPurpleA200 = fromHex('#5f43e9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11555555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
