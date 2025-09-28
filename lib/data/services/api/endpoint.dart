class Endpoint {
  static String markets({
    String vsCurrency = 'idr',
    int perPage = 20,
    int page = 1,
  }) {
    return '/coins/markets?vs_currency=$vsCurrency'
        '&order=market_cap_desc&per_page=$perPage&page=$page'
        '&sparkline=false&price_change_percentage=24h';
  }

  static String details(String id, {String currency = 'idr', int days = 1}) {
    return '/coins/$id?vs_currency=$currency&days=$days&tickers=false'
        '&developer_data=false&community_data=false';
  }

  static String marketChart({
    required String coinId,
    required String vsCurrency,
    required int days,
  }) {
    return '/coins/$coinId/market_chart?vs_currency=$vsCurrency&days=$days';
  }

  static String ohlc(String coinId, {String vsCurrency = 'idr', int days = 1}) {
    return '/coins/$coinId/ohlc?vs_currency=$vsCurrency&days=$days';
  }

  static String nfts({int perPage = 20, int page = 1}) {
    return "/nfts/list";
  }
}
