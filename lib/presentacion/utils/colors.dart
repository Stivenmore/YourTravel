import 'dart:ui';

class ColorsNative {
  static const _instance = ColorsNative._internal();

  const ColorsNative._internal();

  factory ColorsNative() {
    return _instance;
  }

  static Color colorTextWhite = const Color(0xffF0F0F0);
  static Color colorWhite = const Color(0xffE8E8E8);
  static Color colorTextBlack = const Color(0xff212529);
  static Color colorBlack = const Color(0xff2D3136);
  static Color transparent = const Color(0x00000000);
}
