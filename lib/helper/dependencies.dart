import 'package:currency/controllers/currency_controller.dart';
import 'package:currency/data/api/api_client.dart';
import 'package:currency/data/repository/currencyRepo.dart';
import 'package:currency/util/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.appBaseUrl));

  //repos
  Get.lazyPut(() => CurrencyRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => CurrencyController(currencyRepo: Get.find()));
}
