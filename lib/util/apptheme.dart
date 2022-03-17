import 'package:flutter/material.dart';
import 'package:flutter_mdetect/flutter_mdetect.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

class MyTheme{
  MyTheme._();

  static const defaultColor= Colors.red;

  static String mmText(String text){
    return MDetect.isUnicode()?Rabbit.zg2uni(text):text;
  }

}
