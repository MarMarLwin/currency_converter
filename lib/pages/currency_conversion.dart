import 'package:currency/controllers/currency_controller.dart';
import 'package:currency/models/CurrencyRate.dart';
import 'package:currency/util/app_constants.dart';
import 'package:currency/util/colors.dart';
import 'package:currency/util/dimensions.dart';
import 'package:currency/widgets/currency_text_widget.dart';
import 'package:currency/widgets/custom_text_widget.dart';
import 'package:currency/widgets/drawer_widget.dart';
import 'package:currency/widgets/number_input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CurrencyConversion extends StatefulWidget {
  static const routeName = '/CurrencyConversion';

  CurrencyConversion({Key? key}) : super(key: key);
  @override
  _CurrencyConversionState createState() => _CurrencyConversionState();
}

class _CurrencyConversionState extends State<CurrencyConversion> {
  String _fromSelectedCurrency = 'USD';
  String _toSelectedCurrency = 'MMK';

  final _fromAmountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late bool isSingleConverter = true;
  late CurrencyRate fromCurrency;
  late CurrencyRate toCurrency;

  @override
  void initState() {
    if (Get.arguments != null) isSingleConverter = Get.arguments as bool;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            AppConstants.appName,
            style: TextStyle(),
          ),
        ),
        drawer: const MainDrawer(),
        body: Column(

          children: [
            Form(
                key: _formKey,
                child:
                    GetBuilder<CurrencyController>(builder: (latestCurrency) {
                  if (latestCurrency.currencyList.isNotEmpty) {
                    fromCurrency = latestCurrency.currencyList.firstWhere(
                        (element) => element.currency == _fromSelectedCurrency);
                    toCurrency = latestCurrency.currencyList.firstWhere(
                        (element) => element.currency == _toSelectedCurrency);
                    return latestCurrency.isLoading
                        ? const CircularProgressIndicator()
                        : Container(
                            color: AppColor.secondaryColor,
                            padding: EdgeInsets.only(
                                left: Dimension.dimen10,
                                right: Dimension.dimen10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //from currency
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: _dropdownCurrency(
                                            latestCurrency.currencyList, true)
                                        /*GestureDetector(
                                        onTap: () async {
                                          var result = await Get.to(() =>
                                              CurrencyList(latestCurrency
                                                  .currencyList));
                                          setState(() {
                                            _fromSelectedCurrency = result;
                                          });
                                        },
                                        child: CurrencyDropdown(
                                            _fromSelectedCurrency,
                                            Dimension.fontSize16,
                                            true),
                                      ),*/
                                        ),
                                    Expanded(
                                      flex: 2,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: '0',
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          border: InputBorder.none,
                                          alignLabelWithHint: true,
                                        ),
                                        controller: _fromAmountController,
                                        onChanged: (value) {
                                          setState(() {
                                            fromCurrency = latestCurrency
                                                .currencyList
                                                .firstWhere((element) =>
                                                    element.currency ==
                                                    _fromSelectedCurrency);
                                          });
                                        },
                                        showCursor: false,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: Dimension.fontSize24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900),
                                        onSaved: (value) {
                                          fromCurrency = latestCurrency
                                              .currencyList
                                              .firstWhere((element) =>
                                                  element.currency ==
                                                  _fromSelectedCurrency);
                                        },
                                        keyboardType: TextInputType.none,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'[0-9.]')),
                                          LengthLimitingTextInputFormatter(15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.white38,
                                        height: Dimension.dimen20,
                                        endIndent: Dimension.dimen10,
                                        indent: Dimension.dimen10,
                                      ),
                                    ),
                                    const Text(
                                      '** ** ** **',
                                      style:
                                          AppConstants.kLabelDrawerTextStyle21,
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.white38,
                                        height: Dimension.dimen20,
                                        endIndent: Dimension.dimen10,
                                        indent: Dimension.dimen10,
                                      ),
                                    ),
                                  ],
                                ),
                                //to currency
                                Visibility(
                                  visible: isSingleConverter,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: _dropdownCurrency(
                                              latestCurrency.currencyList,
                                              false)),
                                      Expanded(
                                          flex: 2,
                                          child: CustomTextWidget(
                                              double.parse(_fromAmountController
                                                      .text.isEmpty
                                                  ? "0"
                                                  : _fromAmountController.text),
                                              fromCurrency,
                                              toCurrency)),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: !isSingleConverter,
                                  child: Container(
                                    height: Dimension.dimen300,
                                    child: Expanded(
                                      child: ListView.separated(
                                        /* physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,*/
                                        itemCount:
                                            latestCurrency.currencyList.length,
                                        itemBuilder: (ctx, index) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: CurrencyText(
                                                    selectedText: latestCurrency
                                                        .currencyList[index]
                                                        .currency!,
                                                    fontSize:
                                                        Dimension.fontSize16),
                                              ),
                                              Expanded(
                                                  flex: 2,
                                                  child: CustomTextWidget(
                                                      double.parse(
                                                          _fromAmountController
                                                                  .text.isEmpty
                                                              ? "0"
                                                              : _fromAmountController
                                                                  .text),
                                                      fromCurrency,
                                                      latestCurrency
                                                              .currencyList[
                                                          index])),
                                            ],
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return Divider(
                                            color: Colors.white38,
                                            height: Dimension.dimen10 / 4,
                                            endIndent: Dimension.dimen10,
                                            indent: Dimension.dimen10,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                  } else {
                    return const CircularProgressIndicator();
                  }
                })),

            // input
            _showNumberInput()
          ],
        ));
  }

  Widget _showNumberInput() {
    return Container(
        margin:
            EdgeInsets.only(left: Dimension.dimen10, right: Dimension.dimen10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: List<Widget>.generate(3, (i) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (j) {
                    String char =
                        (7 - 3 * i + j).toString(); // (2-i)*3 + j+1 = 7-3*i+j
                    return Container(
                      margin: EdgeInsets.all(Dimension.dimen10),
                      child: NumberInputWidget(
                          text: char,
                          buttonWidth: Dimension.iconSize100,
                          buttonHeight: Dimension.dimen50,
                          onPressed: () {
                            setState(() {
                              _fromAmountController.text =
                                  _fromAmountController.text + char;
                            });
                          }),
                    );
                  }),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(Dimension.dimen10),
                  child: NumberInputWidget(
                      text: '.',
                      buttonWidth: Dimension.dimen90,
                      buttonHeight: Dimension.dimen50,
                      onPressed: () {
                        setState(() {
                          if (_fromAmountController.text.isNotEmpty &&
                              !_fromAmountController.text.contains('.')) {
                            _fromAmountController.text =
                                _fromAmountController.text + '.';
                          }
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(Dimension.dimen10),
                  child: NumberInputWidget(
                      text: '0',
                      buttonWidth: Dimension.dimen90,
                      buttonHeight: Dimension.dimen50,
                      onPressed: () {
                        setState(() {
                          var currentText = _fromAmountController.text;
                          if (currentText.isNotEmpty) {
                            _fromAmountController.text =
                                _fromAmountController.text + '0';
                          }
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(Dimension.dimen10),
                  child: NumberInputWidget(
                    text: "←",
                    buttonHeight: Dimension.dimen50,
                    buttonWidth: Dimension.dimen90,
                    iconColor: AppColor.primaryIconColor,
                    onPressed: () {
                      setState(() {
                        int length = _fromAmountController.text.length;
                        if (length > 0) {
                          _fromAmountController.text = _fromAmountController
                              .text
                              .toString()
                              .substring(0, length - 1);
                        }
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _dropdownCurrency(List<CurrencyRate> currencyList, bool fromCurrency) {
    return currencyList.isNotEmpty
        ? DropdownButtonFormField(
            value: fromCurrency ? _fromSelectedCurrency : _toSelectedCurrency,
            selectedItemBuilder: (BuildContext context) {
              return currencyList.map<Widget>((CurrencyRate? item) {
                return Row(
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
                      item!.currency!,
                      style: TextStyle(
                          fontSize: Dimension.fontSize16,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                );
              }).toList();
            },
            items: currencyList.map((CurrencyRate? item) {
              return DropdownMenuItem<String>(
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
                      item!.currency!,
                      style: TextStyle(
                          fontSize: Dimension.fontSize16,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                value: item.currency!,
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                if (fromCurrency) {
                  _fromSelectedCurrency = value.toString();
                } else {
                  _toSelectedCurrency = value.toString();
                }
              });
            },
            decoration: const InputDecoration(border: InputBorder.none),
            dropdownColor: AppColor.secondaryColor,
            iconEnabledColor: Colors.white,
          )
        : Container();
  }
}
