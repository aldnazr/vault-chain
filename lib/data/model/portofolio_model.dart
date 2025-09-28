class PortofolioModel {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final int marketCapRank;

  PortofolioModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.image,
    required this.marketCapRank,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'symbol': symbol,
      'name': name,
      'image': image,
      'marketCapRank': marketCapRank,
    };
  }

  factory PortofolioModel.fromMap(Map<dynamic, dynamic> map) {
    return PortofolioModel(
      id: map['id'] as String,
      name: map['name'] as String,
      symbol: map['symbol'] as String,
      image: map['image'] as String,
      marketCapRank: map['marketCapRank'] as int,
    );
  }
}
