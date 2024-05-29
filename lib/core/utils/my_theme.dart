import 'package:bookly_2/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = const Color(0XFFDE7773);
  static Color blackColor = const Color(0xff171B36);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color greyColor = const Color(0xff9091A0);
  static Color greyColorBackGround = const Color(0xffE2E3E2);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: kScafoldColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w500, color: blackColor),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
      titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: greyColor),
    ),
  );
}
