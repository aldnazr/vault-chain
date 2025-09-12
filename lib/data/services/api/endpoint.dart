class Endpoint {
  static String markets({
    String vsCurrency = 'idr',
    String? ids,
    int perPage = 50,
    int page = 1,
  }) =>
      '/coins/markets?vs_currency=$vsCurrency'
      '&order=market_cap_desc&per_page=$perPage&page=$page'
      '&sparkline=false&price_change_percentage=24h';

  static String details(String id, {String currency = 'idr', int days = 1}) =>
      '/coins/$id?vs_currency=$currency&days=$days&tickers=false'
      '&developer_data=false&community_data=false';

  static String marketChart({
    required String coinId,
    required String vsCurrency,
    required int days,
  }) => '/coins/$coinId/market_chart?vs_currency=$vsCurrency&days=$days';

  static String ohlc(
    String coinId, {
    String vsCurrency = 'idr',
    int days = 1,
  }) => '/coins/$coinId/ohlc?vs_currency=$vsCurrency&days=$days';
}
