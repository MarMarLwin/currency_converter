import 'package:currency/controllers/currency_controller.dart';
import 'package:currency/pages/currency_conversion.dart';
import 'package:currency/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'helper/dependencies.dart' as dependency;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency.init();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print("current height ${Dimension.screenHeight}");
    Get.find<CurrencyController>().getCurrencyLatestList();
    return GetMaterialApp(
        title: 'Currency Conversion',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'pyidaungsu',
          primarySwatch: AppColor.primaryThemeColor,
        ),
        initialRoute: CurrencyConversion.routeName,
        routes: {
          CurrencyConversion.routeName: (context) => CurrencyConversion()
        });
  }
}
