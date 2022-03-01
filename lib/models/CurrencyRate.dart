import 'package:floor/floor.dart';

@entity
class CurrencyRate {
  @primaryKey
  final String? currency;
  final double? rate;

  CurrencyRate(this.currency, this.rate);
}
