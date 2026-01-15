// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_nft_model.freezed.dart';
part 'top_nft_model.g.dart';

@freezed
abstract class TopNftModel with _$TopNftModel {
  const factory TopNftModel({required List<Nft> nfts}) = _TopNftModel;

  factory TopNftModel.fromJson(Map<String, dynamic> json) =>
      _$TopNftModelFromJson(json);
}

@freezed
abstract class Nft with _$Nft {
  const factory Nft({
    required String id,
    required String name,
    required String symbol,
    required String thumb,
    @JsonKey(name: 'nft_contract_id') required int nftContractId,
    @JsonKey(name: 'native_currency_symbol')
    required String nativeCurrencySymbol,
    @JsonKey(name: 'floor_price_in_native_currency')
    required double floorPriceInNativeCurrency,
    @JsonKey(name: 'floor_price_24h_percentage_change')
    required double floorPrice24hPercentageChange,
    required NftData data,
  }) = _Nft;

  factory Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);
}

@freezed
abstract class NftData with _$NftData {
  const factory NftData({
    @JsonKey(name: 'floor_price') required String floorPrice,
    @JsonKey(name: 'floor_price_in_usd_24h_percentage_change')
    required String floorPriceInUsd24hPercentageChange,
    @JsonKey(name: 'h24_volume') required String h24Volume,
    @JsonKey(name: 'h24_average_sale_price')
    required String h24AverageSalePrice,
    required String sparkline,
  }) = _NftData;

  factory NftData.fromJson(Map<String, dynamic> json) =>
      _$NftDataFromJson(json);
}
