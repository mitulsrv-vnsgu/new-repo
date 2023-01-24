import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#7aea78');

  static Color bluegray50 = fromHex('#e8f3f1');

  static Color black900B2 = fromHex('#b2000000');

  static Color black90000 = fromHex('#00000000');

  static Color gray600 = fromHex('#707684');

  static Color gray601 = fromHex('#717784');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blue700 = fromHex('#216dde');

  static Color amber500 = fromHex('#fbbc05');

  static Color redA200 = fromHex('#ff5c5c');

  static Color gray200 = fromHex('#e5e7eb');

  static Color black9000c = fromHex('#0c000000');

  static Color blue52 = fromHex('#ecf4fb');

  static Color blue50 = fromHex('#edf4fc');

  static Color blue51 = fromHex('#edf5fc');

  static Color bluegray801 = fromHex('#3b4453');

  static Color bluegray800 = fromHex('#3b4353');

  static Color bluegray402 = fromHex('#888888');

  static Color bluegray401 = fromHex('#898a8d');

  static Color bluegray400 = fromHex('#848d98');

  static Color blue100 = fromHex('#bdd8f5');

  static Color gray40087 = fromHex('#87c4c4c4');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA701 = fromHex('#fffffe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90075 = fromHex('#75101522');

  static Color red300 = fromHex('#fb6868');

  static Color gray60014 = fromHex('#147c7c7c');

  static Color gray50 = fromHex('#f4f7ff');

  static Color red50 = fromHex('#ffeaea');

  static Color black900 = fromHex('#000000');

  static Color gray40033 = fromHex('#33c4c4c4');

  static Color gray700 = fromHex('#555555');

  static Color gray500 = fromHex('#adadad');

  static Color gray901 = fromHex('#101623');

  static Color blue601 = fromHex('#219ade');

  static Color blue602 = fromHex('#3577e5');

  static Color gray701 = fromHex('#646464');

  static Color blue600 = fromHex('#227dde');

  static Color gray900 = fromHex('#101522');

  static Color bluegray100 = fromHex('#d3d6da');

  static Color gray101 = fromHex('#f2f2f2');

  static Color gray102 = fromHex('#f3f4f7');

  static Color gray100 = fromHex('#f2f4f6');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color cyan100 = fromHex('#c0f3ee');

  static Color bluegray300 = fromHex('#a0a7b0');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color indigo900 = fromHex('#1a1f71');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
