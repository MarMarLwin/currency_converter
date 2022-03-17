import 'package:currency/models/qurey_model.dart';
import 'currency_data_model.dart';

class Currency {
  Currency({
    required this.query,
    required this.data,
  });
  late final Query query;
  late final CurrencyData data;

  Currency.fromJson(Map<String, dynamic> json) {
    query = Query.fromJson(json['query']);
    data = CurrencyData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['query'] = query.toJson();
    _data['data'] = data.toJson();
    return _data;
  }
}



