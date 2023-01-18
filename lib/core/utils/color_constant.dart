import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#7aea78');

  static Color gray700 = fromHex('#555555');

  static Color bluegray50 = fromHex('#e8f3f1');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray500 = fromHex('#adadad');

  static Color gray900 = fromHex('#232323');

  static Color bluegray100 = fromHex('#cfcfcf');

  static Color indigoA200 = fromHex('#5b61f4');

  static Color teal50 = fromHex('#deebe9');

  static Color gray50 = fromHex('#fafafa');

  static Color blue50 = fromHex('#eaefff');

  static Color teal100 = fromHex('#b3d3ce');

  static Color teal400 = fromHex('#30ada2');

  static Color cyan300 = fromHex('#52d1c6');

  static Color teal300 = fromHex('#36b3a8');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color cyan100 = fromHex('#c0f3ee');

  static Color bluegray10001 = fromHex('#d4d4d4');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#9098b1');

  static Color indigo900 = fromHex('#223263');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
