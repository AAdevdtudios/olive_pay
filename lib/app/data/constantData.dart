import 'package:flutter/material.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

const TextStyle interFont = TextStyle(fontFamily: 'inter');
const TextStyle interFontB = TextStyle(
  fontFamily: 'inter',
  fontWeight: FontWeight.bold,
);
var res = ResponsiveScreenUtil();
const SizedBox spacerItem = SizedBox(
  height: 30,
);

class DocColor {
  static Color white = const Color(0xffFFFFFF);
  static Color ash = const Color(0xffCBCBCB);
  static Color deepAsh = const Color(0xff7C7C7C);
  static Color black = const Color(0xff000000);
  static Color primary = const Color(0xffAE64DD);
  static Color secondary = const Color(0xffC493E4);
  static Color tertiary = const Color(0xffDCC3EB);
}
