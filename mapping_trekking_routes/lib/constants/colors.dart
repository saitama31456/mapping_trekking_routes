import 'package:flutter/rendering.dart';

class AppColors {
  AppColors._();

  static const Color BLACK_COLOR = Color(0xFF000000);
  static const Color WHITE_COLOR = Color(0xFFFFFFFF);

  static Color BG_COLOR = Color.fromARGB(255, 230, 252, 217).withOpacity(0.4);

  static const Color YELLOW_COLOR = Color(0xFFf5d716);

  static const Color GREEN_COLOR = Color(0xFF50d602);

  static Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xffA2D240), Color(0xff1B8B00)],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}