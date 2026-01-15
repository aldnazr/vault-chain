// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_nft_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopNftModel _$TopNftModelFromJson(Map<String, dynamic> json) => _TopNftModel(
  nfts: (json['nfts'] as List<dynamic>)
      .map((e) => Nft.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TopNftModelToJson(_TopNftModel instance) =>
    <String, dynamic>{'nfts': instance.nfts};

_Nft _$NftFromJson(Map<String, dynamic> json) => _Nft(
  id: json['id'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  thumb: json['thumb'] as String,
  nftContractId: (json['nft_contract_id'] as num).toInt(),
  nativeCurrencySymbol: json['native_currency_symbol'] as String,
  floorPriceInNativeCurrency: (json['floor_price_in_native_currency'] as num)
      .toDouble(),
  floorPrice24hPercentageChange:
      (json['floor_price_24h_percentage_change'] as num).toDouble(),
  data: NftData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NftToJson(_Nft instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'symbol': instance.symbol,
  'thumb': instance.thumb,
  'nft_contract_id': instance.nftContractId,
  'native_currency_symbol': instance.nativeCurrencySymbol,
  'floor_price_in_native_currency': instance.floorPriceInNativeCurrency,
  'floor_price_24h_percentage_change': instance.floorPrice24hPercentageChange,
  'data': instance.data,
};

_NftData _$NftDataFromJson(Map<String, dynamic> json) => _NftData(
  floorPrice: json['floor_price'] as String,
  floorPriceInUsd24hPercentageChange:
      json['floor_price_in_usd_24h_percentage_change'] as String,
  h24Volume: json['h24_volume'] as String,
  h24AverageSalePrice: json['h24_average_sale_price'] as String,
  sparkline: json['sparkline'] as String,
  content: json['content'] == null
      ? null
      : NftContent.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NftDataToJson(_NftData instance) => <String, dynamic>{
  'floor_price': instance.floorPrice,
  'floor_price_in_usd_24h_percentage_change':
      instance.floorPriceInUsd24hPercentageChange,
  'h24_volume': instance.h24Volume,
  'h24_average_sale_price': instance.h24AverageSalePrice,
  'sparkline': instance.sparkline,
  'content': instance.content,
};

_NftContent _$NftContentFromJson(Map<String, dynamic> json) => _NftContent(
  title: json['title'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$NftContentToJson(_NftContent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
