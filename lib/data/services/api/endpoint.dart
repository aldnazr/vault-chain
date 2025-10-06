class Endpoint {
  static String markets({
    String vsCurrency = 'idr',
    int page = 1,
    int perPage = 20,
  }) {
    return '/coins/markets?vs_currency=$vsCurrency'
        '&page=$page&per_page=$perPage'
        '&sparkline=false&price_change_percentage=24h';
  }

  static String details(String id) {
    return '/coins/$id?localization=false&tickers=false'
        '&community_data=false&developer_data=false';
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

  static String nfts({
    String order = 'market_cap_usd_desc',
    int perPage = 20,
    int page = 1,
  }) {
    return "/nfts/list?order=$order&per_page=$perPage&$page=$page";
  }

  static String nftById(String id) {
    return "/nfts/$id";
  }
}
