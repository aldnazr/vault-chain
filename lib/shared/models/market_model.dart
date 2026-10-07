import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
abstract class MarketModel with _$MarketModel {
  const factory MarketModel({
    String? id,
    String? symbol,
    String? name,
    String? image,
    @JsonKey(name: 'current_price') num? currentPrice,
    @JsonKey(name: 'market_cap_rank') num? marketCapRank,
    @JsonKey(name: 'price_change_percentage_24h') num? priceChangePercentage24h,
  }) = _MarketModel;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);
}
