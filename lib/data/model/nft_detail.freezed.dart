// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NftDetail {

 String? get id;@JsonKey(name: "contract_address") String? get contractAddress;@JsonKey(name: "asset_platform_id") String? get assetPlatformId; String? get name; String? get symbol;@JsonKey(name: "image") NftImage? get image;@JsonKey(name: "banner_image") String? get bannerImage; String? get description;@JsonKey(name: "native_currency") String? get nativeCurrency;@JsonKey(name: "native_currency_symbol") String? get nativeCurrencySymbol;@JsonKey(name: "market_cap_rank") int? get marketCapRank;@JsonKey(name: "floor_price") PriceInfo? get floorPrice;@JsonKey(name: "market_cap") PriceInfo? get marketCap;@JsonKey(name: "volume_24h") PriceInfo? get volume24h;@JsonKey(name: "floor_price_in_usd_24h_percentage_change") double? get floorPriceInUsd24hPercentageChange;@JsonKey(name: "floor_price_24h_percentage_change") ChangeInfo? get floorPrice24hPercentageChange;@JsonKey(name: "market_cap_24h_percentage_change") ChangeInfo? get marketCap24hPercentageChange;
/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NftDetailCopyWith<NftDetail> get copyWith => _$NftDetailCopyWithImpl<NftDetail>(this as NftDetail, _$identity);

  /// Serializes this NftDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NftDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.contractAddress, contractAddress) || other.contractAddress == contractAddress)&&(identical(other.assetPlatformId, assetPlatformId) || other.assetPlatformId == assetPlatformId)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.image, image) || other.image == image)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&(identical(other.description, description) || other.description == description)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency)&&(identical(other.nativeCurrencySymbol, nativeCurrencySymbol) || other.nativeCurrencySymbol == nativeCurrencySymbol)&&(identical(other.marketCapRank, marketCapRank) || other.marketCapRank == marketCapRank)&&(identical(other.floorPrice, floorPrice) || other.floorPrice == floorPrice)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.floorPriceInUsd24hPercentageChange, floorPriceInUsd24hPercentageChange) || other.floorPriceInUsd24hPercentageChange == floorPriceInUsd24hPercentageChange)&&(identical(other.floorPrice24hPercentageChange, floorPrice24hPercentageChange) || other.floorPrice24hPercentageChange == floorPrice24hPercentageChange)&&(identical(other.marketCap24hPercentageChange, marketCap24hPercentageChange) || other.marketCap24hPercentageChange == marketCap24hPercentageChange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,contractAddress,assetPlatformId,name,symbol,image,bannerImage,description,nativeCurrency,nativeCurrencySymbol,marketCapRank,floorPrice,marketCap,volume24h,floorPriceInUsd24hPercentageChange,floorPrice24hPercentageChange,marketCap24hPercentageChange);

@override
String toString() {
  return 'NftDetail(id: $id, contractAddress: $contractAddress, assetPlatformId: $assetPlatformId, name: $name, symbol: $symbol, image: $image, bannerImage: $bannerImage, description: $description, nativeCurrency: $nativeCurrency, nativeCurrencySymbol: $nativeCurrencySymbol, marketCapRank: $marketCapRank, floorPrice: $floorPrice, marketCap: $marketCap, volume24h: $volume24h, floorPriceInUsd24hPercentageChange: $floorPriceInUsd24hPercentageChange, floorPrice24hPercentageChange: $floorPrice24hPercentageChange, marketCap24hPercentageChange: $marketCap24hPercentageChange)';
}


}

/// @nodoc
abstract mixin class $NftDetailCopyWith<$Res>  {
  factory $NftDetailCopyWith(NftDetail value, $Res Function(NftDetail) _then) = _$NftDetailCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: "contract_address") String? contractAddress,@JsonKey(name: "asset_platform_id") String? assetPlatformId, String? name, String? symbol,@JsonKey(name: "image") NftImage? image,@JsonKey(name: "banner_image") String? bannerImage, String? description,@JsonKey(name: "native_currency") String? nativeCurrency,@JsonKey(name: "native_currency_symbol") String? nativeCurrencySymbol,@JsonKey(name: "market_cap_rank") int? marketCapRank,@JsonKey(name: "floor_price") PriceInfo? floorPrice,@JsonKey(name: "market_cap") PriceInfo? marketCap,@JsonKey(name: "volume_24h") PriceInfo? volume24h,@JsonKey(name: "floor_price_in_usd_24h_percentage_change") double? floorPriceInUsd24hPercentageChange,@JsonKey(name: "floor_price_24h_percentage_change") ChangeInfo? floorPrice24hPercentageChange,@JsonKey(name: "market_cap_24h_percentage_change") ChangeInfo? marketCap24hPercentageChange
});


$NftImageCopyWith<$Res>? get image;$PriceInfoCopyWith<$Res>? get floorPrice;$PriceInfoCopyWith<$Res>? get marketCap;$PriceInfoCopyWith<$Res>? get volume24h;$ChangeInfoCopyWith<$Res>? get floorPrice24hPercentageChange;$ChangeInfoCopyWith<$Res>? get marketCap24hPercentageChange;

}
/// @nodoc
class _$NftDetailCopyWithImpl<$Res>
    implements $NftDetailCopyWith<$Res> {
  _$NftDetailCopyWithImpl(this._self, this._then);

  final NftDetail _self;
  final $Res Function(NftDetail) _then;

/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? contractAddress = freezed,Object? assetPlatformId = freezed,Object? name = freezed,Object? symbol = freezed,Object? image = freezed,Object? bannerImage = freezed,Object? description = freezed,Object? nativeCurrency = freezed,Object? nativeCurrencySymbol = freezed,Object? marketCapRank = freezed,Object? floorPrice = freezed,Object? marketCap = freezed,Object? volume24h = freezed,Object? floorPriceInUsd24hPercentageChange = freezed,Object? floorPrice24hPercentageChange = freezed,Object? marketCap24hPercentageChange = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,contractAddress: freezed == contractAddress ? _self.contractAddress : contractAddress // ignore: cast_nullable_to_non_nullable
as String?,assetPlatformId: freezed == assetPlatformId ? _self.assetPlatformId : assetPlatformId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as NftImage?,bannerImage: freezed == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrencySymbol: freezed == nativeCurrencySymbol ? _self.nativeCurrencySymbol : nativeCurrencySymbol // ignore: cast_nullable_to_non_nullable
as String?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as int?,floorPrice: freezed == floorPrice ? _self.floorPrice : floorPrice // ignore: cast_nullable_to_non_nullable
as PriceInfo?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as PriceInfo?,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as PriceInfo?,floorPriceInUsd24hPercentageChange: freezed == floorPriceInUsd24hPercentageChange ? _self.floorPriceInUsd24hPercentageChange : floorPriceInUsd24hPercentageChange // ignore: cast_nullable_to_non_nullable
as double?,floorPrice24hPercentageChange: freezed == floorPrice24hPercentageChange ? _self.floorPrice24hPercentageChange : floorPrice24hPercentageChange // ignore: cast_nullable_to_non_nullable
as ChangeInfo?,marketCap24hPercentageChange: freezed == marketCap24hPercentageChange ? _self.marketCap24hPercentageChange : marketCap24hPercentageChange // ignore: cast_nullable_to_non_nullable
as ChangeInfo?,
  ));
}
/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $NftImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get floorPrice {
    if (_self.floorPrice == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.floorPrice!, (value) {
    return _then(_self.copyWith(floorPrice: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get marketCap {
    if (_self.marketCap == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.marketCap!, (value) {
    return _then(_self.copyWith(marketCap: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get volume24h {
    if (_self.volume24h == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.volume24h!, (value) {
    return _then(_self.copyWith(volume24h: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeInfoCopyWith<$Res>? get floorPrice24hPercentageChange {
    if (_self.floorPrice24hPercentageChange == null) {
    return null;
  }

  return $ChangeInfoCopyWith<$Res>(_self.floorPrice24hPercentageChange!, (value) {
    return _then(_self.copyWith(floorPrice24hPercentageChange: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeInfoCopyWith<$Res>? get marketCap24hPercentageChange {
    if (_self.marketCap24hPercentageChange == null) {
    return null;
  }

  return $ChangeInfoCopyWith<$Res>(_self.marketCap24hPercentageChange!, (value) {
    return _then(_self.copyWith(marketCap24hPercentageChange: value));
  });
}
}


/// Adds pattern-matching-related methods to [NftDetail].
extension NftDetailPatterns on NftDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NftDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NftDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NftDetail value)  $default,){
final _that = this;
switch (_that) {
case _NftDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NftDetail value)?  $default,){
final _that = this;
switch (_that) {
case _NftDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: "contract_address")  String? contractAddress, @JsonKey(name: "asset_platform_id")  String? assetPlatformId,  String? name,  String? symbol, @JsonKey(name: "image")  NftImage? image, @JsonKey(name: "banner_image")  String? bannerImage,  String? description, @JsonKey(name: "native_currency")  String? nativeCurrency, @JsonKey(name: "native_currency_symbol")  String? nativeCurrencySymbol, @JsonKey(name: "market_cap_rank")  int? marketCapRank, @JsonKey(name: "floor_price")  PriceInfo? floorPrice, @JsonKey(name: "market_cap")  PriceInfo? marketCap, @JsonKey(name: "volume_24h")  PriceInfo? volume24h, @JsonKey(name: "floor_price_in_usd_24h_percentage_change")  double? floorPriceInUsd24hPercentageChange, @JsonKey(name: "floor_price_24h_percentage_change")  ChangeInfo? floorPrice24hPercentageChange, @JsonKey(name: "market_cap_24h_percentage_change")  ChangeInfo? marketCap24hPercentageChange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NftDetail() when $default != null:
return $default(_that.id,_that.contractAddress,_that.assetPlatformId,_that.name,_that.symbol,_that.image,_that.bannerImage,_that.description,_that.nativeCurrency,_that.nativeCurrencySymbol,_that.marketCapRank,_that.floorPrice,_that.marketCap,_that.volume24h,_that.floorPriceInUsd24hPercentageChange,_that.floorPrice24hPercentageChange,_that.marketCap24hPercentageChange);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: "contract_address")  String? contractAddress, @JsonKey(name: "asset_platform_id")  String? assetPlatformId,  String? name,  String? symbol, @JsonKey(name: "image")  NftImage? image, @JsonKey(name: "banner_image")  String? bannerImage,  String? description, @JsonKey(name: "native_currency")  String? nativeCurrency, @JsonKey(name: "native_currency_symbol")  String? nativeCurrencySymbol, @JsonKey(name: "market_cap_rank")  int? marketCapRank, @JsonKey(name: "floor_price")  PriceInfo? floorPrice, @JsonKey(name: "market_cap")  PriceInfo? marketCap, @JsonKey(name: "volume_24h")  PriceInfo? volume24h, @JsonKey(name: "floor_price_in_usd_24h_percentage_change")  double? floorPriceInUsd24hPercentageChange, @JsonKey(name: "floor_price_24h_percentage_change")  ChangeInfo? floorPrice24hPercentageChange, @JsonKey(name: "market_cap_24h_percentage_change")  ChangeInfo? marketCap24hPercentageChange)  $default,) {final _that = this;
switch (_that) {
case _NftDetail():
return $default(_that.id,_that.contractAddress,_that.assetPlatformId,_that.name,_that.symbol,_that.image,_that.bannerImage,_that.description,_that.nativeCurrency,_that.nativeCurrencySymbol,_that.marketCapRank,_that.floorPrice,_that.marketCap,_that.volume24h,_that.floorPriceInUsd24hPercentageChange,_that.floorPrice24hPercentageChange,_that.marketCap24hPercentageChange);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: "contract_address")  String? contractAddress, @JsonKey(name: "asset_platform_id")  String? assetPlatformId,  String? name,  String? symbol, @JsonKey(name: "image")  NftImage? image, @JsonKey(name: "banner_image")  String? bannerImage,  String? description, @JsonKey(name: "native_currency")  String? nativeCurrency, @JsonKey(name: "native_currency_symbol")  String? nativeCurrencySymbol, @JsonKey(name: "market_cap_rank")  int? marketCapRank, @JsonKey(name: "floor_price")  PriceInfo? floorPrice, @JsonKey(name: "market_cap")  PriceInfo? marketCap, @JsonKey(name: "volume_24h")  PriceInfo? volume24h, @JsonKey(name: "floor_price_in_usd_24h_percentage_change")  double? floorPriceInUsd24hPercentageChange, @JsonKey(name: "floor_price_24h_percentage_change")  ChangeInfo? floorPrice24hPercentageChange, @JsonKey(name: "market_cap_24h_percentage_change")  ChangeInfo? marketCap24hPercentageChange)?  $default,) {final _that = this;
switch (_that) {
case _NftDetail() when $default != null:
return $default(_that.id,_that.contractAddress,_that.assetPlatformId,_that.name,_that.symbol,_that.image,_that.bannerImage,_that.description,_that.nativeCurrency,_that.nativeCurrencySymbol,_that.marketCapRank,_that.floorPrice,_that.marketCap,_that.volume24h,_that.floorPriceInUsd24hPercentageChange,_that.floorPrice24hPercentageChange,_that.marketCap24hPercentageChange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NftDetail implements NftDetail {
  const _NftDetail({this.id, @JsonKey(name: "contract_address") this.contractAddress, @JsonKey(name: "asset_platform_id") this.assetPlatformId, this.name, this.symbol, @JsonKey(name: "image") this.image, @JsonKey(name: "banner_image") this.bannerImage, this.description, @JsonKey(name: "native_currency") this.nativeCurrency, @JsonKey(name: "native_currency_symbol") this.nativeCurrencySymbol, @JsonKey(name: "market_cap_rank") this.marketCapRank, @JsonKey(name: "floor_price") this.floorPrice, @JsonKey(name: "market_cap") this.marketCap, @JsonKey(name: "volume_24h") this.volume24h, @JsonKey(name: "floor_price_in_usd_24h_percentage_change") this.floorPriceInUsd24hPercentageChange, @JsonKey(name: "floor_price_24h_percentage_change") this.floorPrice24hPercentageChange, @JsonKey(name: "market_cap_24h_percentage_change") this.marketCap24hPercentageChange});
  factory _NftDetail.fromJson(Map<String, dynamic> json) => _$NftDetailFromJson(json);

@override final  String? id;
@override@JsonKey(name: "contract_address") final  String? contractAddress;
@override@JsonKey(name: "asset_platform_id") final  String? assetPlatformId;
@override final  String? name;
@override final  String? symbol;
@override@JsonKey(name: "image") final  NftImage? image;
@override@JsonKey(name: "banner_image") final  String? bannerImage;
@override final  String? description;
@override@JsonKey(name: "native_currency") final  String? nativeCurrency;
@override@JsonKey(name: "native_currency_symbol") final  String? nativeCurrencySymbol;
@override@JsonKey(name: "market_cap_rank") final  int? marketCapRank;
@override@JsonKey(name: "floor_price") final  PriceInfo? floorPrice;
@override@JsonKey(name: "market_cap") final  PriceInfo? marketCap;
@override@JsonKey(name: "volume_24h") final  PriceInfo? volume24h;
@override@JsonKey(name: "floor_price_in_usd_24h_percentage_change") final  double? floorPriceInUsd24hPercentageChange;
@override@JsonKey(name: "floor_price_24h_percentage_change") final  ChangeInfo? floorPrice24hPercentageChange;
@override@JsonKey(name: "market_cap_24h_percentage_change") final  ChangeInfo? marketCap24hPercentageChange;

/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NftDetailCopyWith<_NftDetail> get copyWith => __$NftDetailCopyWithImpl<_NftDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NftDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NftDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.contractAddress, contractAddress) || other.contractAddress == contractAddress)&&(identical(other.assetPlatformId, assetPlatformId) || other.assetPlatformId == assetPlatformId)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.image, image) || other.image == image)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&(identical(other.description, description) || other.description == description)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency)&&(identical(other.nativeCurrencySymbol, nativeCurrencySymbol) || other.nativeCurrencySymbol == nativeCurrencySymbol)&&(identical(other.marketCapRank, marketCapRank) || other.marketCapRank == marketCapRank)&&(identical(other.floorPrice, floorPrice) || other.floorPrice == floorPrice)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.floorPriceInUsd24hPercentageChange, floorPriceInUsd24hPercentageChange) || other.floorPriceInUsd24hPercentageChange == floorPriceInUsd24hPercentageChange)&&(identical(other.floorPrice24hPercentageChange, floorPrice24hPercentageChange) || other.floorPrice24hPercentageChange == floorPrice24hPercentageChange)&&(identical(other.marketCap24hPercentageChange, marketCap24hPercentageChange) || other.marketCap24hPercentageChange == marketCap24hPercentageChange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,contractAddress,assetPlatformId,name,symbol,image,bannerImage,description,nativeCurrency,nativeCurrencySymbol,marketCapRank,floorPrice,marketCap,volume24h,floorPriceInUsd24hPercentageChange,floorPrice24hPercentageChange,marketCap24hPercentageChange);

@override
String toString() {
  return 'NftDetail(id: $id, contractAddress: $contractAddress, assetPlatformId: $assetPlatformId, name: $name, symbol: $symbol, image: $image, bannerImage: $bannerImage, description: $description, nativeCurrency: $nativeCurrency, nativeCurrencySymbol: $nativeCurrencySymbol, marketCapRank: $marketCapRank, floorPrice: $floorPrice, marketCap: $marketCap, volume24h: $volume24h, floorPriceInUsd24hPercentageChange: $floorPriceInUsd24hPercentageChange, floorPrice24hPercentageChange: $floorPrice24hPercentageChange, marketCap24hPercentageChange: $marketCap24hPercentageChange)';
}


}

/// @nodoc
abstract mixin class _$NftDetailCopyWith<$Res> implements $NftDetailCopyWith<$Res> {
  factory _$NftDetailCopyWith(_NftDetail value, $Res Function(_NftDetail) _then) = __$NftDetailCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: "contract_address") String? contractAddress,@JsonKey(name: "asset_platform_id") String? assetPlatformId, String? name, String? symbol,@JsonKey(name: "image") NftImage? image,@JsonKey(name: "banner_image") String? bannerImage, String? description,@JsonKey(name: "native_currency") String? nativeCurrency,@JsonKey(name: "native_currency_symbol") String? nativeCurrencySymbol,@JsonKey(name: "market_cap_rank") int? marketCapRank,@JsonKey(name: "floor_price") PriceInfo? floorPrice,@JsonKey(name: "market_cap") PriceInfo? marketCap,@JsonKey(name: "volume_24h") PriceInfo? volume24h,@JsonKey(name: "floor_price_in_usd_24h_percentage_change") double? floorPriceInUsd24hPercentageChange,@JsonKey(name: "floor_price_24h_percentage_change") ChangeInfo? floorPrice24hPercentageChange,@JsonKey(name: "market_cap_24h_percentage_change") ChangeInfo? marketCap24hPercentageChange
});


@override $NftImageCopyWith<$Res>? get image;@override $PriceInfoCopyWith<$Res>? get floorPrice;@override $PriceInfoCopyWith<$Res>? get marketCap;@override $PriceInfoCopyWith<$Res>? get volume24h;@override $ChangeInfoCopyWith<$Res>? get floorPrice24hPercentageChange;@override $ChangeInfoCopyWith<$Res>? get marketCap24hPercentageChange;

}
/// @nodoc
class __$NftDetailCopyWithImpl<$Res>
    implements _$NftDetailCopyWith<$Res> {
  __$NftDetailCopyWithImpl(this._self, this._then);

  final _NftDetail _self;
  final $Res Function(_NftDetail) _then;

/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? contractAddress = freezed,Object? assetPlatformId = freezed,Object? name = freezed,Object? symbol = freezed,Object? image = freezed,Object? bannerImage = freezed,Object? description = freezed,Object? nativeCurrency = freezed,Object? nativeCurrencySymbol = freezed,Object? marketCapRank = freezed,Object? floorPrice = freezed,Object? marketCap = freezed,Object? volume24h = freezed,Object? floorPriceInUsd24hPercentageChange = freezed,Object? floorPrice24hPercentageChange = freezed,Object? marketCap24hPercentageChange = freezed,}) {
  return _then(_NftDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,contractAddress: freezed == contractAddress ? _self.contractAddress : contractAddress // ignore: cast_nullable_to_non_nullable
as String?,assetPlatformId: freezed == assetPlatformId ? _self.assetPlatformId : assetPlatformId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as NftImage?,bannerImage: freezed == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrencySymbol: freezed == nativeCurrencySymbol ? _self.nativeCurrencySymbol : nativeCurrencySymbol // ignore: cast_nullable_to_non_nullable
as String?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as int?,floorPrice: freezed == floorPrice ? _self.floorPrice : floorPrice // ignore: cast_nullable_to_non_nullable
as PriceInfo?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as PriceInfo?,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as PriceInfo?,floorPriceInUsd24hPercentageChange: freezed == floorPriceInUsd24hPercentageChange ? _self.floorPriceInUsd24hPercentageChange : floorPriceInUsd24hPercentageChange // ignore: cast_nullable_to_non_nullable
as double?,floorPrice24hPercentageChange: freezed == floorPrice24hPercentageChange ? _self.floorPrice24hPercentageChange : floorPrice24hPercentageChange // ignore: cast_nullable_to_non_nullable
as ChangeInfo?,marketCap24hPercentageChange: freezed == marketCap24hPercentageChange ? _self.marketCap24hPercentageChange : marketCap24hPercentageChange // ignore: cast_nullable_to_non_nullable
as ChangeInfo?,
  ));
}

/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $NftImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get floorPrice {
    if (_self.floorPrice == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.floorPrice!, (value) {
    return _then(_self.copyWith(floorPrice: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get marketCap {
    if (_self.marketCap == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.marketCap!, (value) {
    return _then(_self.copyWith(marketCap: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<$Res>? get volume24h {
    if (_self.volume24h == null) {
    return null;
  }

  return $PriceInfoCopyWith<$Res>(_self.volume24h!, (value) {
    return _then(_self.copyWith(volume24h: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeInfoCopyWith<$Res>? get floorPrice24hPercentageChange {
    if (_self.floorPrice24hPercentageChange == null) {
    return null;
  }

  return $ChangeInfoCopyWith<$Res>(_self.floorPrice24hPercentageChange!, (value) {
    return _then(_self.copyWith(floorPrice24hPercentageChange: value));
  });
}/// Create a copy of NftDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeInfoCopyWith<$Res>? get marketCap24hPercentageChange {
    if (_self.marketCap24hPercentageChange == null) {
    return null;
  }

  return $ChangeInfoCopyWith<$Res>(_self.marketCap24hPercentageChange!, (value) {
    return _then(_self.copyWith(marketCap24hPercentageChange: value));
  });
}
}


/// @nodoc
mixin _$NftImage {

 String? get small;@JsonKey(name: "small_2x") String? get small2x;
/// Create a copy of NftImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NftImageCopyWith<NftImage> get copyWith => _$NftImageCopyWithImpl<NftImage>(this as NftImage, _$identity);

  /// Serializes this NftImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NftImage&&(identical(other.small, small) || other.small == small)&&(identical(other.small2x, small2x) || other.small2x == small2x));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,small2x);

@override
String toString() {
  return 'NftImage(small: $small, small2x: $small2x)';
}


}

/// @nodoc
abstract mixin class $NftImageCopyWith<$Res>  {
  factory $NftImageCopyWith(NftImage value, $Res Function(NftImage) _then) = _$NftImageCopyWithImpl;
@useResult
$Res call({
 String? small,@JsonKey(name: "small_2x") String? small2x
});




}
/// @nodoc
class _$NftImageCopyWithImpl<$Res>
    implements $NftImageCopyWith<$Res> {
  _$NftImageCopyWithImpl(this._self, this._then);

  final NftImage _self;
  final $Res Function(NftImage) _then;

/// Create a copy of NftImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? small = freezed,Object? small2x = freezed,}) {
  return _then(_self.copyWith(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,small2x: freezed == small2x ? _self.small2x : small2x // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NftImage].
extension NftImagePatterns on NftImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NftImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NftImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NftImage value)  $default,){
final _that = this;
switch (_that) {
case _NftImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NftImage value)?  $default,){
final _that = this;
switch (_that) {
case _NftImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? small, @JsonKey(name: "small_2x")  String? small2x)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NftImage() when $default != null:
return $default(_that.small,_that.small2x);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? small, @JsonKey(name: "small_2x")  String? small2x)  $default,) {final _that = this;
switch (_that) {
case _NftImage():
return $default(_that.small,_that.small2x);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? small, @JsonKey(name: "small_2x")  String? small2x)?  $default,) {final _that = this;
switch (_that) {
case _NftImage() when $default != null:
return $default(_that.small,_that.small2x);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NftImage implements NftImage {
  const _NftImage({this.small, @JsonKey(name: "small_2x") this.small2x});
  factory _NftImage.fromJson(Map<String, dynamic> json) => _$NftImageFromJson(json);

@override final  String? small;
@override@JsonKey(name: "small_2x") final  String? small2x;

/// Create a copy of NftImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NftImageCopyWith<_NftImage> get copyWith => __$NftImageCopyWithImpl<_NftImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NftImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NftImage&&(identical(other.small, small) || other.small == small)&&(identical(other.small2x, small2x) || other.small2x == small2x));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,small2x);

@override
String toString() {
  return 'NftImage(small: $small, small2x: $small2x)';
}


}

/// @nodoc
abstract mixin class _$NftImageCopyWith<$Res> implements $NftImageCopyWith<$Res> {
  factory _$NftImageCopyWith(_NftImage value, $Res Function(_NftImage) _then) = __$NftImageCopyWithImpl;
@override @useResult
$Res call({
 String? small,@JsonKey(name: "small_2x") String? small2x
});




}
/// @nodoc
class __$NftImageCopyWithImpl<$Res>
    implements _$NftImageCopyWith<$Res> {
  __$NftImageCopyWithImpl(this._self, this._then);

  final _NftImage _self;
  final $Res Function(_NftImage) _then;

/// Create a copy of NftImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? small = freezed,Object? small2x = freezed,}) {
  return _then(_NftImage(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,small2x: freezed == small2x ? _self.small2x : small2x // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PriceInfo {

@JsonKey(name: "native_currency") double? get nativeCurrency; double? get usd;
/// Create a copy of PriceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceInfoCopyWith<PriceInfo> get copyWith => _$PriceInfoCopyWithImpl<PriceInfo>(this as PriceInfo, _$identity);

  /// Serializes this PriceInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceInfo&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nativeCurrency,usd);

@override
String toString() {
  return 'PriceInfo(nativeCurrency: $nativeCurrency, usd: $usd)';
}


}

/// @nodoc
abstract mixin class $PriceInfoCopyWith<$Res>  {
  factory $PriceInfoCopyWith(PriceInfo value, $Res Function(PriceInfo) _then) = _$PriceInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "native_currency") double? nativeCurrency, double? usd
});




}
/// @nodoc
class _$PriceInfoCopyWithImpl<$Res>
    implements $PriceInfoCopyWith<$Res> {
  _$PriceInfoCopyWithImpl(this._self, this._then);

  final PriceInfo _self;
  final $Res Function(PriceInfo) _then;

/// Create a copy of PriceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nativeCurrency = freezed,Object? usd = freezed,}) {
  return _then(_self.copyWith(
nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceInfo].
extension PriceInfoPatterns on PriceInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceInfo value)  $default,){
final _that = this;
switch (_that) {
case _PriceInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PriceInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "native_currency")  double? nativeCurrency,  double? usd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceInfo() when $default != null:
return $default(_that.nativeCurrency,_that.usd);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "native_currency")  double? nativeCurrency,  double? usd)  $default,) {final _that = this;
switch (_that) {
case _PriceInfo():
return $default(_that.nativeCurrency,_that.usd);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "native_currency")  double? nativeCurrency,  double? usd)?  $default,) {final _that = this;
switch (_that) {
case _PriceInfo() when $default != null:
return $default(_that.nativeCurrency,_that.usd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceInfo implements PriceInfo {
  const _PriceInfo({@JsonKey(name: "native_currency") this.nativeCurrency, this.usd});
  factory _PriceInfo.fromJson(Map<String, dynamic> json) => _$PriceInfoFromJson(json);

@override@JsonKey(name: "native_currency") final  double? nativeCurrency;
@override final  double? usd;

/// Create a copy of PriceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceInfoCopyWith<_PriceInfo> get copyWith => __$PriceInfoCopyWithImpl<_PriceInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceInfo&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nativeCurrency,usd);

@override
String toString() {
  return 'PriceInfo(nativeCurrency: $nativeCurrency, usd: $usd)';
}


}

/// @nodoc
abstract mixin class _$PriceInfoCopyWith<$Res> implements $PriceInfoCopyWith<$Res> {
  factory _$PriceInfoCopyWith(_PriceInfo value, $Res Function(_PriceInfo) _then) = __$PriceInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "native_currency") double? nativeCurrency, double? usd
});




}
/// @nodoc
class __$PriceInfoCopyWithImpl<$Res>
    implements _$PriceInfoCopyWith<$Res> {
  __$PriceInfoCopyWithImpl(this._self, this._then);

  final _PriceInfo _self;
  final $Res Function(_PriceInfo) _then;

/// Create a copy of PriceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nativeCurrency = freezed,Object? usd = freezed,}) {
  return _then(_PriceInfo(
nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ChangeInfo {

 double? get usd;@JsonKey(name: "native_currency") double? get nativeCurrency;
/// Create a copy of ChangeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeInfoCopyWith<ChangeInfo> get copyWith => _$ChangeInfoCopyWithImpl<ChangeInfo>(this as ChangeInfo, _$identity);

  /// Serializes this ChangeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeInfo&&(identical(other.usd, usd) || other.usd == usd)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usd,nativeCurrency);

@override
String toString() {
  return 'ChangeInfo(usd: $usd, nativeCurrency: $nativeCurrency)';
}


}

/// @nodoc
abstract mixin class $ChangeInfoCopyWith<$Res>  {
  factory $ChangeInfoCopyWith(ChangeInfo value, $Res Function(ChangeInfo) _then) = _$ChangeInfoCopyWithImpl;
@useResult
$Res call({
 double? usd,@JsonKey(name: "native_currency") double? nativeCurrency
});




}
/// @nodoc
class _$ChangeInfoCopyWithImpl<$Res>
    implements $ChangeInfoCopyWith<$Res> {
  _$ChangeInfoCopyWithImpl(this._self, this._then);

  final ChangeInfo _self;
  final $Res Function(ChangeInfo) _then;

/// Create a copy of ChangeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usd = freezed,Object? nativeCurrency = freezed,}) {
  return _then(_self.copyWith(
usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeInfo].
extension ChangeInfoPatterns on ChangeInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeInfo value)  $default,){
final _that = this;
switch (_that) {
case _ChangeInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? usd, @JsonKey(name: "native_currency")  double? nativeCurrency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeInfo() when $default != null:
return $default(_that.usd,_that.nativeCurrency);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? usd, @JsonKey(name: "native_currency")  double? nativeCurrency)  $default,) {final _that = this;
switch (_that) {
case _ChangeInfo():
return $default(_that.usd,_that.nativeCurrency);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? usd, @JsonKey(name: "native_currency")  double? nativeCurrency)?  $default,) {final _that = this;
switch (_that) {
case _ChangeInfo() when $default != null:
return $default(_that.usd,_that.nativeCurrency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeInfo implements ChangeInfo {
  const _ChangeInfo({this.usd, @JsonKey(name: "native_currency") this.nativeCurrency});
  factory _ChangeInfo.fromJson(Map<String, dynamic> json) => _$ChangeInfoFromJson(json);

@override final  double? usd;
@override@JsonKey(name: "native_currency") final  double? nativeCurrency;

/// Create a copy of ChangeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeInfoCopyWith<_ChangeInfo> get copyWith => __$ChangeInfoCopyWithImpl<_ChangeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeInfo&&(identical(other.usd, usd) || other.usd == usd)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usd,nativeCurrency);

@override
String toString() {
  return 'ChangeInfo(usd: $usd, nativeCurrency: $nativeCurrency)';
}


}

/// @nodoc
abstract mixin class _$ChangeInfoCopyWith<$Res> implements $ChangeInfoCopyWith<$Res> {
  factory _$ChangeInfoCopyWith(_ChangeInfo value, $Res Function(_ChangeInfo) _then) = __$ChangeInfoCopyWithImpl;
@override @useResult
$Res call({
 double? usd,@JsonKey(name: "native_currency") double? nativeCurrency
});




}
/// @nodoc
class __$ChangeInfoCopyWithImpl<$Res>
    implements _$ChangeInfoCopyWith<$Res> {
  __$ChangeInfoCopyWithImpl(this._self, this._then);

  final _ChangeInfo _self;
  final $Res Function(_ChangeInfo) _then;

/// Create a copy of ChangeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usd = freezed,Object? nativeCurrency = freezed,}) {
  return _then(_ChangeInfo(
usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
