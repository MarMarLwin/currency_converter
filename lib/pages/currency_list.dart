import 'package:currency/controllers/currency_controller.dart';
import 'package:currency/models/CurrencyRate.dart';
import 'package:currency/util/app_constants.dart';
import 'package:currency/util/colors.dart';
import 'package:currency/util/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrencyList extends StatelessWidget {
  CurrencyList(this.currencyList);
  List<CurrencyRate> currencyList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.selectCurrency),
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 0.5,
                shadowColor: Colors.blueGrey,
                borderOnForeground: false,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: ListTile(
                    onTap: () {
                      Get.back(result: currencyList[index].currency);
                    },
                    contentPadding: const EdgeInsets.all(5),
                    selected: true,
                    leading: Icon(
                      Icons.monetization_on,
                      size: Dimension.iconSize35,
                      color: AppColor.secondaryColor,
                    ),
                    title: Text(
                      currencyList[index].currency!,
                      style: AppConstants.kBlackTextStyle16,
                    )),
              );
            },
            itemCount: currencyList.length,
          ),
        ));
  }
}
