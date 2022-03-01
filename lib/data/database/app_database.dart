import 'package:currency/data/database/currency_rate_dao.dart';
import 'package:currency/models/CurrencyRate.dart';

// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [
  CurrencyRate,
])
abstract class AppDatabase extends FloorDatabase {
  CurrencyRateDao get currencyRateDao;
}
