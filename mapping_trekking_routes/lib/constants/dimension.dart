import 'package:flutter/material.dart';

class Dimension {
  Dimension._();

  static const double baseHeight = 780;
  static const double baseWidth = 360;

  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static scaleHeight(double val, BuildContext context) => MediaQuery.of(context).size.height / baseHeight * val;
  static scaleWidth(double val, BuildContext context) => MediaQuery.of(context).size.width / baseWidth * val;

  static scaleRadius(double val, BuildContext context) => MediaQuery.of(context).size.height / baseHeight * val;
}