class CoinDetail {
  final String id;
  final String symbol;
  final String name;
  final String? hashingAlgorithm;
  final List<String>? categories;
  final CoinImage image;
  final MarketData marketData;

  CoinDetail({
    required this.id,
    required this.symbol,
    required this.name,
    this.hashingAlgorithm,
    this.categories,
    required this.image,
    required this.marketData,
  });

  factory CoinDetail.fromJson(Map<String, dynamic> json) {
    return CoinDetail(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      hashingAlgorithm: json['hashing_algorithm'],
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: CoinImage.fromJson(json['image']),
      marketData: MarketData.fromJson(json['market_data']),
    );
  }
}

class CoinImage {
  final String thumb;
  final String small;
  final String large;

  CoinImage({required this.thumb, required this.small, required this.large});

  factory CoinImage.fromJson(Map<String, dynamic> json) {
    return CoinImage(
      thumb: json['thumb'],
      small: json['small'],
      large: json['large'],
    );
  }
}

class MarketData {
  final Map<String, dynamic> currentPrice;
  final int? marketCapRank;
  final Map<String, double> changes;

  MarketData({
    required this.currentPrice,
    this.marketCapRank,
    required this.changes,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) {
    return MarketData(
      currentPrice: Map<String, dynamic>.from(json['current_price']),
      marketCapRank: json['market_cap_rank'],
      changes: {
        "24h": (json['price_change_percentage_24h'] as num).toDouble(),
        "7d": (json['price_change_percentage_7d'] as num).toDouble(),
        "14d": (json['price_change_percentage_14d'] as num).toDouble(),
        "30d": (json['price_change_percentage_30d'] as num).toDouble(),
        "60d": (json['price_change_percentage_60d'] as num).toDouble(),
        "1y": (json['price_change_percentage_1y'] as num).toDouble(),
      },
    );
  }
}

class Ticker {
  final String base;
  final String target;
  final Market market;
  final double last;
  final double volume;

  Ticker({
    required this.base,
    required this.target,
    required this.market,
    required this.last,
    required this.volume,
  });

  factory Ticker.fromJson(Map<String, dynamic> json) {
    return Ticker(
      base: json['base'],
      target: json['target'],
      market: Market.fromJson(json['market']),
      last: (json['last'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
    );
  }
}

class Market {
  final String name;
  final String identifier;
  final bool hasTradingIncentive;

  Market({
    required this.name,
    required this.identifier,
    required this.hasTradingIncentive,
  });

  factory Market.fromJson(Map<String, dynamic> json) {
    return Market(
      name: json['name'],
      identifier: json['identifier'],
      hasTradingIncentive: json['has_trading_incentive'],
    );
  }
}
