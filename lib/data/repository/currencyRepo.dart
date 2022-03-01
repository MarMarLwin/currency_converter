import 'package:currency/data/api/api_client.dart';
import 'package:currency/util/app_constants.dart';
import 'package:get/get.dart';

class CurrencyRepo extends GetxService {
  final ApiClient apiClient;
  CurrencyRepo({required this.apiClient});

  Future<Response> getLatestCurrencyList() async {
    return await apiClient
        .getLatestCurrencyRate(AppConstants.latestCurrencyRate);
  }
}
