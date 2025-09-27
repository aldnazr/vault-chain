class NftCollection {
  final String id;
  final String contractAddress;
  final String name;
  final String assetPlatformId;
  final String symbol;

  NftCollection({
    required this.id,
    required this.contractAddress,
    required this.name,
    required this.assetPlatformId,
    required this.symbol,
  });

  factory NftCollection.fromJson(Map<String, dynamic> json) {
    return NftCollection(
      id: json['id'] as String,
      contractAddress: json['contract_address'] as String,
      name: json['name'] as String,
      assetPlatformId: json['asset_platform_id'] as String,
      symbol: json['symbol'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'contract_address': contractAddress,
      'name': name,
      'asset_platform_id': assetPlatformId,
      'symbol': symbol,
    };
  }
}
