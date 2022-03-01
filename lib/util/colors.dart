import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static MaterialColor primaryThemeColor =
      MaterialColor(0xFF1a1150, colorCodes);
  static Color primaryColor = const Color(0xFF1a1150);
  static Color primaryColor1 = const Color(0xFF140954);
  static Color secondaryColor = const Color(0xFF3c4b85);
  static Color primaryIconColor = const Color(0xFFc9243a);

  static Map<int, Color> colorCodes = {
    50: const Color.fromRGBO(26, 17, 80, .1),
    100: const Color.fromRGBO(26, 17, 80, .2),
    200: const Color.fromRGBO(26, 17, 80, .3),
    300: const Color.fromRGBO(26, 17, 80, .4),
    400: const Color.fromRGBO(26, 17, 80, .5),
    500: const Color.fromRGBO(26, 17, 80, .6),
    600: const Color.fromRGBO(26, 17, 80, .7),
    700: const Color.fromRGBO(26, 17, 80, .8),
    800: const Color.fromRGBO(26, 17, 80, .9),
    900: const Color.fromRGBO(26, 17, 80, 1),
  };
}
