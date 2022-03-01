import 'package:currency/pages/currency_conversion.dart';
import 'package:currency/util/app_constants.dart';
import 'package:currency/util/colors.dart';
import 'package:currency/util/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: Dimension.iconSize100,
        padding: EdgeInsets.only(
          top: Dimension.dimen50,
          left: Dimension.dimen10,
          bottom: Dimension.dimen10,
        ),
        color: AppColor.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.monetization_on,
                size: 100,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(CurrencyConversion.routeName, arguments: true);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: Dimension.dimen20),
                child: Row(
                  children: [
                    Icon(
                      Icons.monetization_on,
                      size: Dimension.iconSize25,
                      color: Colors.white,
                    ),
                    SizedBox(width: Dimension.dimen10),
                    const Text(
                      'Currency Converter',
                      style: AppConstants.kWhiteTextStyle16,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(CurrencyConversion.routeName, arguments: false);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: Dimension.dimen20),
                child: Row(
                  children: [
                    Icon(
                      Icons.monetization_on,
                      size: Dimension.iconSize25,
                      color: Colors.white,
                    ),
                    SizedBox(width: Dimension.dimen10),
                    const Text(
                      'Multi Currency Converter',
                      style: AppConstants.kWhiteTextStyle16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
