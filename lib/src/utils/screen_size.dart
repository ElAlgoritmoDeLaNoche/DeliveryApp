import 'package:flutter/material.dart';

double screenWidth = 0;
double screenHeight = 0;

extension ScreenSize on double {
  double getScreenWidth({BuildContext? context, double? multiply}) {
    var width = MediaQuery.of(context!).size.width;
    if (multiply != null) {
      width = width * multiply;
    }
    return width;
  }

  double getScreenHeight({BuildContext? context, double? multiply}) {
    var height = MediaQuery.of(context!).size.height;
    if (multiply != null) {
      height = height * multiply;
    }
    return height;
  }
}
