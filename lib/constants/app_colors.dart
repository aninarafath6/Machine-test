import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xff080A0C);
  static const Color lightGrey = Color(0xff7E8FA1);
  static const LinearGradient selectedGradient = LinearGradient(
    colors: <Color>[
      Color(0xff93CFEE),
      Color(0xffD37BD4),
      Color(0xffFF699B),
      Color(0xffFFAA6C),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
