import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:currency/data/repository/currencyRepo.dart';
import 'package:currency/models/CurrencyRate.dart';
import 'package:currency/models/currency_model.dart';
import 'package:currency/util/app_constants.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:currency/data/database/app_database.dart';

class CurrencyController extends GetxController {
  final CurrencyRepo currencyRepo;

  CurrencyController({required this.currencyRepo});

  late List<CurrencyRate> _currencyList = [];

  List<CurrencyRate> get currencyList => _currencyList;
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  Future<void> getCurrencyLatestList() async {
    var box = GetStorage();
    var database = await $FloorAppDatabase
        .databaseBuilder(AppConstants.databaseName)
        .build();
    var prevTimestamp = box.read('timestamp');
    var prevTime = DateTime.fromMillisecondsSinceEpoch(
        prevTimestamp == null ? 0 : prevTimestamp.toInt() * 1000);
    var diffMinutes = DateTime.now().difference(prevTime).inMinutes;
    print('diff min.... ' + diffMinutes.toString());

    if (diffMinutes >= 30) {
      _isLoading = true;
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        Response response = await currencyRepo.getLatestCurrencyList();

        if (response.statusCode == 200) {
          _currencyList = [];
          var data = Currency.fromJson(response.body).data;
          var timestamp = Currency.fromJson(response.body).query.timestamp;
          box.write('timestamp', timestamp);
          _currencyList.add(CurrencyRate('USD', 1));
          data.toJson().forEach((key, value) {
            _currencyList.add(CurrencyRate(key, value));
          });
          Comparator<CurrencyRate> nameComparator =
              (a, b) => a.currency!.compareTo(b.currency!);
          _currencyList.sort(nameComparator);
          database.currencyRateDao.insertAll(_currencyList);
        }
      }
    } else {
      var list = await database.currencyRateDao.getAllCurrency();
      _currencyList.addAll(list);
    }
    _isLoading = false;
    update();
  }
}
