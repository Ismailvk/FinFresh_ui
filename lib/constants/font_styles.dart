import 'package:finfest_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppFontStyle {
  static TextStyle headingText = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.darkTeal);

  static TextStyle lightGreySmallText = TextStyle(color: AppColor.lightGrey);

  static TextStyle normalGreen = const TextStyle(color: AppColor.green);
  static TextStyle normalBlack =
      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle normalRed = const TextStyle(color: Colors.red);
  static TextStyle boldWhite20 =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
}
