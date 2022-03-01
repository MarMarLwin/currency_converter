import 'package:get/get.dart';

class Dimension {
  static final double screenWidth = Get.context!.width;
  static final double screenHeight = Get.context!.height; //781
  static final double dimen10 = screenHeight / 78.1;
  static final double dimen15 = screenHeight / 52.1;
  static final double dimen20 = screenHeight / 39.1;
  static final double dimen50 = screenHeight / 15.62;
  static final double dimen90=screenHeight/8.67;
  static final double dimen180 = screenHeight / 4.33;
  static final double dimen290 = screenHeight / 2.69;
  static final double dimen300 = screenHeight / 2.6;

  //icon size
  static final double iconSize25 = screenHeight / 31.24;
  static final double iconSize35 = screenHeight / 22.31;
  static final double iconSize100 = screenHeight / 7.81;
  //font size
  static final double fontSize12 = screenHeight / 65.08;
  static final double fontSize16 = screenHeight / 48.81;
  static final double fontSize21 = screenHeight / 37.19;
  static final double fontSize24 = screenHeight / 32.54;
  static final double fontSize26 = screenHeight / 30.03;
}
