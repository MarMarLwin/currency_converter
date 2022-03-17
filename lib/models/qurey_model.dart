
class Query {
  Query({
    required this.apikey,
    required this.timestamp,
    required this.baseCurrency,
  });
  late final String apikey;
  late final int timestamp;
  late final String baseCurrency;

  Query.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    timestamp = json['timestamp'];
    baseCurrency = json['base_currency'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['apikey'] = apikey;
    _data['timestamp'] = timestamp;
    _data['base_currency'] = baseCurrency;
    return _data;
  }
}
