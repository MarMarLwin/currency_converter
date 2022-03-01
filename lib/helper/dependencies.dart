import 'package:currency/controllers/currency_controller.dart';
import 'package:currency/data/api/api_client.dart';
import 'package:currency/data/repository/currencyRepo.dart';
import 'package:currency/util/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.appBaseUrl));
  Get.lazyPut(() => CurrencyRepo(apiClient: Get.find()));
  Get.lazyPut(() => CurrencyController(currencyRepo: Get.find()));
}
