import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color border = hexToColor('#DDDDE5');
  static Color red = Colors.red;
  static Color white = Colors.white;
  static Color blue = Colors.blue;
  static Color borderOutline = hexToColor('#00C578');
  static Color color000000 = hexToColor('#000000');
  static Color color696969 = hexToColor('#696969');
  static Color color312F2F = hexToColor('#312F2F');
  static Color color2BC1BB = hexToColor('#2BC1BB');

  static Color brand = hexToColor('#2BC1BB');
  static Color errorText = hexToColor('#EF4E49');

 
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}