import 'package:currency/util/colors.dart';
import 'package:currency/util/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyText extends StatelessWidget {
  final String selectedText;
  Color? textColor = Colors.white;
  double fontSize = 16;

  CurrencyText(
      {Key? key,
      required this.selectedText,
      required this.fontSize,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimension.dimen15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.monetization_on,
            size: Dimension.iconSize25,
            color: AppColor.primaryIconColor,
          ),
          SizedBox(
            width: Dimension.dimen20,
          ),
          Text(
            selectedText,
            style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
