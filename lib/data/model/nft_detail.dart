// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nft_detail.freezed.dart';
part 'nft_detail.g.dart';

@freezed
abstract class NftDetail with _$NftDetail {
  const factory NftDetail({
    String? id,
    @JsonKey(name: "contract_address") String? contractAddress,
    @JsonKey(name: "asset_platform_id") String? assetPlatformId,
    String? name,
    String? symbol,
    @JsonKey(name: "image") NftImage? image,
    @JsonKey(name: "banner_image") String? bannerImage,
    String? description,
    @JsonKey(name: "native_currency") String? nativeCurrency,
    @JsonKey(name: "native_currency_symbol") String? nativeCurrencySymbol,
    @JsonKey(name: "market_cap_rank") int? marketCapRank,
    @JsonKey(name: "floor_price") PriceInfo? floorPrice,
    @JsonKey(name: "market_cap") PriceInfo? marketCap,
    @JsonKey(name: "volume_24h") PriceInfo? volume24h,
    @JsonKey(name: "floor_price_in_usd_24h_percentage_change")
    double? floorPriceInUsd24hPercentageChange,
    @JsonKey(name: "floor_price_24h_percentage_change")
    ChangeInfo? floorPrice24hPercentageChange,
    @JsonKey(name: "market_cap_24h_percentage_change")
    ChangeInfo? marketCap24hPercentageChange,
  }) = _NftDetail;

  factory NftDetail.fromJson(Map<String, dynamic> json) =>
      _$NftDetailFromJson(json);
}

@freezed
abstract class NftImage with _$NftImage {
  const factory NftImage({
    String? small,
    @JsonKey(name: "small_2x") String? small2x,
  }) = _NftImage;

  factory NftImage.fromJson(Map<String, dynamic> json) =>
      _$NftImageFromJson(json);
}

@freezed
abstract class PriceInfo with _$PriceInfo {
  const factory PriceInfo({
    @JsonKey(name: "native_currency") double? nativeCurrency,
    double? usd,
  }) = _PriceInfo;

  factory PriceInfo.fromJson(Map<String, dynamic> json) =>
      _$PriceInfoFromJson(json);
}

@freezed
abstract class ChangeInfo with _$ChangeInfo {
  const factory ChangeInfo({
    double? usd,
    @JsonKey(name: "native_currency") double? nativeCurrency,
  }) = _ChangeInfo;

  factory ChangeInfo.fromJson(Map<String, dynamic> json) =>
      _$ChangeInfoFromJson(json);
}
