// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NftDetail _$NftDetailFromJson(Map<String, dynamic> json) => _NftDetail(
  id: json['id'] as String?,
  contractAddress: json['contract_address'] as String?,
  assetPlatformId: json['asset_platform_id'] as String?,
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
  image: json['image'] == null
      ? null
      : NftImage.fromJson(json['image'] as Map<String, dynamic>),
  bannerImage: json['banner_image'] as String?,
  description: json['description'] as String?,
  nativeCurrency: json['native_currency'] as String?,
  nativeCurrencySymbol: json['native_currency_symbol'] as String?,
  marketCapRank: (json['market_cap_rank'] as num?)?.toInt(),
  floorPrice: json['floor_price'] == null
      ? null
      : PriceInfo.fromJson(json['floor_price'] as Map<String, dynamic>),
  marketCap: json['market_cap'] == null
      ? null
      : PriceInfo.fromJson(json['market_cap'] as Map<String, dynamic>),
  volume24h: json['volume_24h'] == null
      ? null
      : PriceInfo.fromJson(json['volume_24h'] as Map<String, dynamic>),
  floorPriceInUsd24hPercentageChange:
      (json['floor_price_in_usd_24h_percentage_change'] as num?)?.toDouble(),
  floorPrice24hPercentageChange:
      json['floor_price_24h_percentage_change'] == null
      ? null
      : ChangeInfo.fromJson(
          json['floor_price_24h_percentage_change'] as Map<String, dynamic>,
        ),
  marketCap24hPercentageChange: json['market_cap_24h_percentage_change'] == null
      ? null
      : ChangeInfo.fromJson(
          json['market_cap_24h_percentage_change'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$NftDetailToJson(
  _NftDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'contract_address': instance.contractAddress,
  'asset_platform_id': instance.assetPlatformId,
  'name': instance.name,
  'symbol': instance.symbol,
  'image': instance.image,
  'banner_image': instance.bannerImage,
  'description': instance.description,
  'native_currency': instance.nativeCurrency,
  'native_currency_symbol': instance.nativeCurrencySymbol,
  'market_cap_rank': instance.marketCapRank,
  'floor_price': instance.floorPrice,
  'market_cap': instance.marketCap,
  'volume_24h': instance.volume24h,
  'floor_price_in_usd_24h_percentage_change':
      instance.floorPriceInUsd24hPercentageChange,
  'floor_price_24h_percentage_change': instance.floorPrice24hPercentageChange,
  'market_cap_24h_percentage_change': instance.marketCap24hPercentageChange,
};

_NftImage _$NftImageFromJson(Map<String, dynamic> json) => _NftImage(
  small: json['small'] as String?,
  small2x: json['small_2x'] as String?,
);

Map<String, dynamic> _$NftImageToJson(_NftImage instance) => <String, dynamic>{
  'small': instance.small,
  'small_2x': instance.small2x,
};

_PriceInfo _$PriceInfoFromJson(Map<String, dynamic> json) => _PriceInfo(
  nativeCurrency: (json['native_currency'] as num?)?.toDouble(),
  usd: (json['usd'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PriceInfoToJson(_PriceInfo instance) =>
    <String, dynamic>{
      'native_currency': instance.nativeCurrency,
      'usd': instance.usd,
    };

_ChangeInfo _$ChangeInfoFromJson(Map<String, dynamic> json) => _ChangeInfo(
  usd: (json['usd'] as num?)?.toDouble(),
  nativeCurrency: (json['native_currency'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ChangeInfoToJson(_ChangeInfo instance) =>
    <String, dynamic>{
      'usd': instance.usd,
      'native_currency': instance.nativeCurrency,
    };
