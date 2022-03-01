import 'package:currency/models/CurrencyRate.dart';
import 'package:floor/floor.dart';

@dao
abstract class CurrencyRateDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAll(List<CurrencyRate> list);

  @Query('SELECT * FROM CurrencyRate')
  Future<List<CurrencyRate>> getAllCurrency();
}
