import 'package:currency/models/CurrencyRate.dart';
import 'package:currency/util/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget(this.fromAmount, this.fromCurrency, this.toCurrency,
      {Key? key})
      : super(key: key);
  CurrencyRate fromCurrency;
  CurrencyRate toCurrency;
  double fromAmount;

  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("#,##0.0000");
    var convertedValue = fromAmount * (toCurrency.rate! / fromCurrency.rate!);
    var formatedValue = fromAmount == 0 ? 0 : oCcy.format(convertedValue);
    return Text(
      formatedValue.toString(),
      textAlign: TextAlign.end,
      style: TextStyle(
          fontSize: Dimension.fontSize24,
          color: Colors.white,
          fontWeight: FontWeight.w900),
    );
  }
}
