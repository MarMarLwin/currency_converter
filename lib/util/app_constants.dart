import 'dart:ui';

import 'package:currency/util/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

class AppConstants {
  static const String appName = 'Currency Converter';
  static const String apiKey = 'c3b8b3e0-9513-11ec-bfbf-39a4d1cfd571';
  // I have some problemn to use currency layer free account.Athough I complaint this issues,it didn't fix yet.So I used this freecurrency api.
  static const String appBaseUrl = 'https://freecurrencyapi.net';
  static const String latestCurrencyRate = '/api/v2/latest?apikey=$apiKey';
  static const String databaseName = 'currency.db';

//text style
  static const TextStyle kWhiteTextStyle16 =
      TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900);
  static const TextStyle kBlackTextStyle16 = TextStyle(
      fontSize: 16, color: Colors.black87, fontWeight: FontWeight.w900);
  static final TextStyle kWhiteTextStyle24 = TextStyle(
      fontSize: Dimension.fontSize24,
      color: Colors.white,
      fontWeight: FontWeight.w900);
  static const TextStyle kLabelDrawerTextStyle21 = TextStyle(
    fontSize: 21,
    color: Colors.white,
  );

  //const string
  static const String selectCurrency = 'Select Currency';
}
