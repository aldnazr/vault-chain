// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_nft_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopNftModel {

 List<Nft> get nfts;
/// Create a copy of TopNftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopNftModelCopyWith<TopNftModel> get copyWith => _$TopNftModelCopyWithImpl<TopNftModel>(this as TopNftModel, _$identity);

  /// Serializes this TopNftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopNftModel&&const DeepCollectionEquality().equals(other.nfts, nfts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nfts));

@override
String toString() {
  return 'TopNftModel(nfts: $nfts)';
}


}

/// @nodoc
abstract mixin class $TopNftModelCopyWith<$Res>  {
  factory $TopNftModelCopyWith(TopNftModel value, $Res Function(TopNftModel) _then) = _$TopNftModelCopyWithImpl;
@useResult
$Res call({
 List<Nft> nfts
});




}
/// @nodoc
class _$TopNftModelCopyWithImpl<$Res>
    implements $TopNftModelCopyWith<$Res> {
  _$TopNftModelCopyWithImpl(this._self, this._then);

  final TopNftModel _self;
  final $Res Function(TopNftModel) _then;

/// Create a copy of TopNftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nfts = null,}) {
  return _then(_self.copyWith(
nfts: null == nfts ? _self.nfts : nfts // ignore: cast_nullable_to_non_nullable
as List<Nft>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopNftModel].
extension TopNftModelPatterns on TopNftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopNftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopNftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopNftModel value)  $default,){
final _that = this;
switch (_that) {
case _TopNftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopNftModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopNftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Nft> nfts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopNftModel() when $default != null:
return $default(_that.nfts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Nft> nfts)  $default,) {final _that = this;
switch (_that) {
case _TopNftModel():
return $default(_that.nfts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Nft> nfts)?  $default,) {final _that = this;
switch (_that) {
case _TopNftModel() when $default != null:
return $default(_that.nfts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopNftModel implements TopNftModel {
  const _TopNftModel({required final  List<Nft> nfts}): _nfts = nfts;
  factory _TopNftModel.fromJson(Map<String, dynamic> json) => _$TopNftModelFromJson(json);

 final  List<Nft> _nfts;
@override List<Nft> get nfts {
  if (_nfts is EqualUnmodifiableListView) return _nfts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nfts);
}


/// Create a copy of TopNftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopNftModelCopyWith<_TopNftModel> get copyWith => __$TopNftModelCopyWithImpl<_TopNftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopNftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopNftModel&&const DeepCollectionEquality().equals(other._nfts, _nfts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nfts));

@override
String toString() {
  return 'TopNftModel(nfts: $nfts)';
}


}

/// @nodoc
abstract mixin class _$TopNftModelCopyWith<$Res> implements $TopNftModelCopyWith<$Res> {
  factory _$TopNftModelCopyWith(_TopNftModel value, $Res Function(_TopNftModel) _then) = __$TopNftModelCopyWithImpl;
@override @useResult
$Res call({
 List<Nft> nfts
});




}
/// @nodoc
class __$TopNftModelCopyWithImpl<$Res>
    implements _$TopNftModelCopyWith<$Res> {
  __$TopNftModelCopyWithImpl(this._self, this._then);

  final _TopNftModel _self;
  final $Res Function(_TopNftModel) _then;

/// Create a copy of TopNftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nfts = null,}) {
  return _then(_TopNftModel(
nfts: null == nfts ? _self._nfts : nfts // ignore: cast_nullable_to_non_nullable
as List<Nft>,
  ));
}


}


/// @nodoc
mixin _$Nft {

 String get id; String get name; String get symbol; String get thumb;@JsonKey(name: 'nft_contract_id') int get nftContractId;@JsonKey(name: 'native_currency_symbol') String get nativeCurrencySymbol;@JsonKey(name: 'floor_price_in_native_currency') double get floorPriceInNativeCurrency;@JsonKey(name: 'floor_price_24h_percentage_change') double get floorPrice24hPercentageChange; NftData get data;
/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NftCopyWith<Nft> get copyWith => _$NftCopyWithImpl<Nft>(this as Nft, _$identity);

  /// Serializes this Nft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nft&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.thumb, thumb) || other.thumb == thumb)&&(identical(other.nftContractId, nftContractId) || other.nftContractId == nftContractId)&&(identical(other.nativeCurrencySymbol, nativeCurrencySymbol) || other.nativeCurrencySymbol == nativeCurrencySymbol)&&(identical(other.floorPriceInNativeCurrency, floorPriceInNativeCurrency) || other.floorPriceInNativeCurrency == floorPriceInNativeCurrency)&&(identical(other.floorPrice24hPercentageChange, floorPrice24hPercentageChange) || other.floorPrice24hPercentageChange == floorPrice24hPercentageChange)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,thumb,nftContractId,nativeCurrencySymbol,floorPriceInNativeCurrency,floorPrice24hPercentageChange,data);

@override
String toString() {
  return 'Nft(id: $id, name: $name, symbol: $symbol, thumb: $thumb, nftContractId: $nftContractId, nativeCurrencySymbol: $nativeCurrencySymbol, floorPriceInNativeCurrency: $floorPriceInNativeCurrency, floorPrice24hPercentageChange: $floorPrice24hPercentageChange, data: $data)';
}


}

/// @nodoc
abstract mixin class $NftCopyWith<$Res>  {
  factory $NftCopyWith(Nft value, $Res Function(Nft) _then) = _$NftCopyWithImpl;
@useResult
$Res call({
 String id, String name, String symbol, String thumb,@JsonKey(name: 'nft_contract_id') int nftContractId,@JsonKey(name: 'native_currency_symbol') String nativeCurrencySymbol,@JsonKey(name: 'floor_price_in_native_currency') double floorPriceInNativeCurrency,@JsonKey(name: 'floor_price_24h_percentage_change') double floorPrice24hPercentageChange, NftData data
});


$NftDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NftCopyWithImpl<$Res>
    implements $NftCopyWith<$Res> {
  _$NftCopyWithImpl(this._self, this._then);

  final Nft _self;
  final $Res Function(Nft) _then;

/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? thumb = null,Object? nftContractId = null,Object? nativeCurrencySymbol = null,Object? floorPriceInNativeCurrency = null,Object? floorPrice24hPercentageChange = null,Object? data = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,thumb: null == thumb ? _self.thumb : thumb // ignore: cast_nullable_to_non_nullable
as String,nftContractId: null == nftContractId ? _self.nftContractId : nftContractId // ignore: cast_nullable_to_non_nullable
as int,nativeCurrencySymbol: null == nativeCurrencySymbol ? _self.nativeCurrencySymbol : nativeCurrencySymbol // ignore: cast_nullable_to_non_nullable
as String,floorPriceInNativeCurrency: null == floorPriceInNativeCurrency ? _self.floorPriceInNativeCurrency : floorPriceInNativeCurrency // ignore: cast_nullable_to_non_nullable
as double,floorPrice24hPercentageChange: null == floorPrice24hPercentageChange ? _self.floorPrice24hPercentageChange : floorPrice24hPercentageChange // ignore: cast_nullable_to_non_nullable
as double,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NftData,
  ));
}
/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftDataCopyWith<$Res> get data {
  
  return $NftDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [Nft].
extension NftPatterns on Nft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nft value)  $default,){
final _that = this;
switch (_that) {
case _Nft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nft value)?  $default,){
final _that = this;
switch (_that) {
case _Nft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  String thumb, @JsonKey(name: 'nft_contract_id')  int nftContractId, @JsonKey(name: 'native_currency_symbol')  String nativeCurrencySymbol, @JsonKey(name: 'floor_price_in_native_currency')  double floorPriceInNativeCurrency, @JsonKey(name: 'floor_price_24h_percentage_change')  double floorPrice24hPercentageChange,  NftData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nft() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.thumb,_that.nftContractId,_that.nativeCurrencySymbol,_that.floorPriceInNativeCurrency,_that.floorPrice24hPercentageChange,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  String thumb, @JsonKey(name: 'nft_contract_id')  int nftContractId, @JsonKey(name: 'native_currency_symbol')  String nativeCurrencySymbol, @JsonKey(name: 'floor_price_in_native_currency')  double floorPriceInNativeCurrency, @JsonKey(name: 'floor_price_24h_percentage_change')  double floorPrice24hPercentageChange,  NftData data)  $default,) {final _that = this;
switch (_that) {
case _Nft():
return $default(_that.id,_that.name,_that.symbol,_that.thumb,_that.nftContractId,_that.nativeCurrencySymbol,_that.floorPriceInNativeCurrency,_that.floorPrice24hPercentageChange,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String symbol,  String thumb, @JsonKey(name: 'nft_contract_id')  int nftContractId, @JsonKey(name: 'native_currency_symbol')  String nativeCurrencySymbol, @JsonKey(name: 'floor_price_in_native_currency')  double floorPriceInNativeCurrency, @JsonKey(name: 'floor_price_24h_percentage_change')  double floorPrice24hPercentageChange,  NftData data)?  $default,) {final _that = this;
switch (_that) {
case _Nft() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.thumb,_that.nftContractId,_that.nativeCurrencySymbol,_that.floorPriceInNativeCurrency,_that.floorPrice24hPercentageChange,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nft implements Nft {
  const _Nft({required this.id, required this.name, required this.symbol, required this.thumb, @JsonKey(name: 'nft_contract_id') required this.nftContractId, @JsonKey(name: 'native_currency_symbol') required this.nativeCurrencySymbol, @JsonKey(name: 'floor_price_in_native_currency') required this.floorPriceInNativeCurrency, @JsonKey(name: 'floor_price_24h_percentage_change') required this.floorPrice24hPercentageChange, required this.data});
  factory _Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);

@override final  String id;
@override final  String name;
@override final  String symbol;
@override final  String thumb;
@override@JsonKey(name: 'nft_contract_id') final  int nftContractId;
@override@JsonKey(name: 'native_currency_symbol') final  String nativeCurrencySymbol;
@override@JsonKey(name: 'floor_price_in_native_currency') final  double floorPriceInNativeCurrency;
@override@JsonKey(name: 'floor_price_24h_percentage_change') final  double floorPrice24hPercentageChange;
@override final  NftData data;

/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NftCopyWith<_Nft> get copyWith => __$NftCopyWithImpl<_Nft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nft&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.thumb, thumb) || other.thumb == thumb)&&(identical(other.nftContractId, nftContractId) || other.nftContractId == nftContractId)&&(identical(other.nativeCurrencySymbol, nativeCurrencySymbol) || other.nativeCurrencySymbol == nativeCurrencySymbol)&&(identical(other.floorPriceInNativeCurrency, floorPriceInNativeCurrency) || other.floorPriceInNativeCurrency == floorPriceInNativeCurrency)&&(identical(other.floorPrice24hPercentageChange, floorPrice24hPercentageChange) || other.floorPrice24hPercentageChange == floorPrice24hPercentageChange)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,thumb,nftContractId,nativeCurrencySymbol,floorPriceInNativeCurrency,floorPrice24hPercentageChange,data);

@override
String toString() {
  return 'Nft(id: $id, name: $name, symbol: $symbol, thumb: $thumb, nftContractId: $nftContractId, nativeCurrencySymbol: $nativeCurrencySymbol, floorPriceInNativeCurrency: $floorPriceInNativeCurrency, floorPrice24hPercentageChange: $floorPrice24hPercentageChange, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NftCopyWith<$Res> implements $NftCopyWith<$Res> {
  factory _$NftCopyWith(_Nft value, $Res Function(_Nft) _then) = __$NftCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String symbol, String thumb,@JsonKey(name: 'nft_contract_id') int nftContractId,@JsonKey(name: 'native_currency_symbol') String nativeCurrencySymbol,@JsonKey(name: 'floor_price_in_native_currency') double floorPriceInNativeCurrency,@JsonKey(name: 'floor_price_24h_percentage_change') double floorPrice24hPercentageChange, NftData data
});


@override $NftDataCopyWith<$Res> get data;

}
/// @nodoc
class __$NftCopyWithImpl<$Res>
    implements _$NftCopyWith<$Res> {
  __$NftCopyWithImpl(this._self, this._then);

  final _Nft _self;
  final $Res Function(_Nft) _then;

/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? thumb = null,Object? nftContractId = null,Object? nativeCurrencySymbol = null,Object? floorPriceInNativeCurrency = null,Object? floorPrice24hPercentageChange = null,Object? data = null,}) {
  return _then(_Nft(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,thumb: null == thumb ? _self.thumb : thumb // ignore: cast_nullable_to_non_nullable
as String,nftContractId: null == nftContractId ? _self.nftContractId : nftContractId // ignore: cast_nullable_to_non_nullable
as int,nativeCurrencySymbol: null == nativeCurrencySymbol ? _self.nativeCurrencySymbol : nativeCurrencySymbol // ignore: cast_nullable_to_non_nullable
as String,floorPriceInNativeCurrency: null == floorPriceInNativeCurrency ? _self.floorPriceInNativeCurrency : floorPriceInNativeCurrency // ignore: cast_nullable_to_non_nullable
as double,floorPrice24hPercentageChange: null == floorPrice24hPercentageChange ? _self.floorPrice24hPercentageChange : floorPrice24hPercentageChange // ignore: cast_nullable_to_non_nullable
as double,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NftData,
  ));
}

/// Create a copy of Nft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftDataCopyWith<$Res> get data {
  
  return $NftDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NftData {

@JsonKey(name: 'floor_price') String get floorPrice;@JsonKey(name: 'floor_price_in_usd_24h_percentage_change') String get floorPriceInUsd24hPercentageChange;@JsonKey(name: 'h24_volume') String get h24Volume;@JsonKey(name: 'h24_average_sale_price') String get h24AverageSalePrice; String get sparkline; NftContent? get content;
/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NftDataCopyWith<NftData> get copyWith => _$NftDataCopyWithImpl<NftData>(this as NftData, _$identity);

  /// Serializes this NftData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NftData&&(identical(other.floorPrice, floorPrice) || other.floorPrice == floorPrice)&&(identical(other.floorPriceInUsd24hPercentageChange, floorPriceInUsd24hPercentageChange) || other.floorPriceInUsd24hPercentageChange == floorPriceInUsd24hPercentageChange)&&(identical(other.h24Volume, h24Volume) || other.h24Volume == h24Volume)&&(identical(other.h24AverageSalePrice, h24AverageSalePrice) || other.h24AverageSalePrice == h24AverageSalePrice)&&(identical(other.sparkline, sparkline) || other.sparkline == sparkline)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,floorPrice,floorPriceInUsd24hPercentageChange,h24Volume,h24AverageSalePrice,sparkline,content);

@override
String toString() {
  return 'NftData(floorPrice: $floorPrice, floorPriceInUsd24hPercentageChange: $floorPriceInUsd24hPercentageChange, h24Volume: $h24Volume, h24AverageSalePrice: $h24AverageSalePrice, sparkline: $sparkline, content: $content)';
}


}

/// @nodoc
abstract mixin class $NftDataCopyWith<$Res>  {
  factory $NftDataCopyWith(NftData value, $Res Function(NftData) _then) = _$NftDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'floor_price') String floorPrice,@JsonKey(name: 'floor_price_in_usd_24h_percentage_change') String floorPriceInUsd24hPercentageChange,@JsonKey(name: 'h24_volume') String h24Volume,@JsonKey(name: 'h24_average_sale_price') String h24AverageSalePrice, String sparkline, NftContent? content
});


$NftContentCopyWith<$Res>? get content;

}
/// @nodoc
class _$NftDataCopyWithImpl<$Res>
    implements $NftDataCopyWith<$Res> {
  _$NftDataCopyWithImpl(this._self, this._then);

  final NftData _self;
  final $Res Function(NftData) _then;

/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? floorPrice = null,Object? floorPriceInUsd24hPercentageChange = null,Object? h24Volume = null,Object? h24AverageSalePrice = null,Object? sparkline = null,Object? content = freezed,}) {
  return _then(_self.copyWith(
floorPrice: null == floorPrice ? _self.floorPrice : floorPrice // ignore: cast_nullable_to_non_nullable
as String,floorPriceInUsd24hPercentageChange: null == floorPriceInUsd24hPercentageChange ? _self.floorPriceInUsd24hPercentageChange : floorPriceInUsd24hPercentageChange // ignore: cast_nullable_to_non_nullable
as String,h24Volume: null == h24Volume ? _self.h24Volume : h24Volume // ignore: cast_nullable_to_non_nullable
as String,h24AverageSalePrice: null == h24AverageSalePrice ? _self.h24AverageSalePrice : h24AverageSalePrice // ignore: cast_nullable_to_non_nullable
as String,sparkline: null == sparkline ? _self.sparkline : sparkline // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as NftContent?,
  ));
}
/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftContentCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $NftContentCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [NftData].
extension NftDataPatterns on NftData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NftData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NftData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NftData value)  $default,){
final _that = this;
switch (_that) {
case _NftData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NftData value)?  $default,){
final _that = this;
switch (_that) {
case _NftData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'floor_price')  String floorPrice, @JsonKey(name: 'floor_price_in_usd_24h_percentage_change')  String floorPriceInUsd24hPercentageChange, @JsonKey(name: 'h24_volume')  String h24Volume, @JsonKey(name: 'h24_average_sale_price')  String h24AverageSalePrice,  String sparkline,  NftContent? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NftData() when $default != null:
return $default(_that.floorPrice,_that.floorPriceInUsd24hPercentageChange,_that.h24Volume,_that.h24AverageSalePrice,_that.sparkline,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'floor_price')  String floorPrice, @JsonKey(name: 'floor_price_in_usd_24h_percentage_change')  String floorPriceInUsd24hPercentageChange, @JsonKey(name: 'h24_volume')  String h24Volume, @JsonKey(name: 'h24_average_sale_price')  String h24AverageSalePrice,  String sparkline,  NftContent? content)  $default,) {final _that = this;
switch (_that) {
case _NftData():
return $default(_that.floorPrice,_that.floorPriceInUsd24hPercentageChange,_that.h24Volume,_that.h24AverageSalePrice,_that.sparkline,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'floor_price')  String floorPrice, @JsonKey(name: 'floor_price_in_usd_24h_percentage_change')  String floorPriceInUsd24hPercentageChange, @JsonKey(name: 'h24_volume')  String h24Volume, @JsonKey(name: 'h24_average_sale_price')  String h24AverageSalePrice,  String sparkline,  NftContent? content)?  $default,) {final _that = this;
switch (_that) {
case _NftData() when $default != null:
return $default(_that.floorPrice,_that.floorPriceInUsd24hPercentageChange,_that.h24Volume,_that.h24AverageSalePrice,_that.sparkline,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NftData implements NftData {
  const _NftData({@JsonKey(name: 'floor_price') required this.floorPrice, @JsonKey(name: 'floor_price_in_usd_24h_percentage_change') required this.floorPriceInUsd24hPercentageChange, @JsonKey(name: 'h24_volume') required this.h24Volume, @JsonKey(name: 'h24_average_sale_price') required this.h24AverageSalePrice, required this.sparkline, this.content});
  factory _NftData.fromJson(Map<String, dynamic> json) => _$NftDataFromJson(json);

@override@JsonKey(name: 'floor_price') final  String floorPrice;
@override@JsonKey(name: 'floor_price_in_usd_24h_percentage_change') final  String floorPriceInUsd24hPercentageChange;
@override@JsonKey(name: 'h24_volume') final  String h24Volume;
@override@JsonKey(name: 'h24_average_sale_price') final  String h24AverageSalePrice;
@override final  String sparkline;
@override final  NftContent? content;

/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NftDataCopyWith<_NftData> get copyWith => __$NftDataCopyWithImpl<_NftData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NftDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NftData&&(identical(other.floorPrice, floorPrice) || other.floorPrice == floorPrice)&&(identical(other.floorPriceInUsd24hPercentageChange, floorPriceInUsd24hPercentageChange) || other.floorPriceInUsd24hPercentageChange == floorPriceInUsd24hPercentageChange)&&(identical(other.h24Volume, h24Volume) || other.h24Volume == h24Volume)&&(identical(other.h24AverageSalePrice, h24AverageSalePrice) || other.h24AverageSalePrice == h24AverageSalePrice)&&(identical(other.sparkline, sparkline) || other.sparkline == sparkline)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,floorPrice,floorPriceInUsd24hPercentageChange,h24Volume,h24AverageSalePrice,sparkline,content);

@override
String toString() {
  return 'NftData(floorPrice: $floorPrice, floorPriceInUsd24hPercentageChange: $floorPriceInUsd24hPercentageChange, h24Volume: $h24Volume, h24AverageSalePrice: $h24AverageSalePrice, sparkline: $sparkline, content: $content)';
}


}

/// @nodoc
abstract mixin class _$NftDataCopyWith<$Res> implements $NftDataCopyWith<$Res> {
  factory _$NftDataCopyWith(_NftData value, $Res Function(_NftData) _then) = __$NftDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'floor_price') String floorPrice,@JsonKey(name: 'floor_price_in_usd_24h_percentage_change') String floorPriceInUsd24hPercentageChange,@JsonKey(name: 'h24_volume') String h24Volume,@JsonKey(name: 'h24_average_sale_price') String h24AverageSalePrice, String sparkline, NftContent? content
});


@override $NftContentCopyWith<$Res>? get content;

}
/// @nodoc
class __$NftDataCopyWithImpl<$Res>
    implements _$NftDataCopyWith<$Res> {
  __$NftDataCopyWithImpl(this._self, this._then);

  final _NftData _self;
  final $Res Function(_NftData) _then;

/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? floorPrice = null,Object? floorPriceInUsd24hPercentageChange = null,Object? h24Volume = null,Object? h24AverageSalePrice = null,Object? sparkline = null,Object? content = freezed,}) {
  return _then(_NftData(
floorPrice: null == floorPrice ? _self.floorPrice : floorPrice // ignore: cast_nullable_to_non_nullable
as String,floorPriceInUsd24hPercentageChange: null == floorPriceInUsd24hPercentageChange ? _self.floorPriceInUsd24hPercentageChange : floorPriceInUsd24hPercentageChange // ignore: cast_nullable_to_non_nullable
as String,h24Volume: null == h24Volume ? _self.h24Volume : h24Volume // ignore: cast_nullable_to_non_nullable
as String,h24AverageSalePrice: null == h24AverageSalePrice ? _self.h24AverageSalePrice : h24AverageSalePrice // ignore: cast_nullable_to_non_nullable
as String,sparkline: null == sparkline ? _self.sparkline : sparkline // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as NftContent?,
  ));
}

/// Create a copy of NftData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NftContentCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $NftContentCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$NftContent {

 String get title; String get description;
/// Create a copy of NftContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NftContentCopyWith<NftContent> get copyWith => _$NftContentCopyWithImpl<NftContent>(this as NftContent, _$identity);

  /// Serializes this NftContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NftContent&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'NftContent(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $NftContentCopyWith<$Res>  {
  factory $NftContentCopyWith(NftContent value, $Res Function(NftContent) _then) = _$NftContentCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class _$NftContentCopyWithImpl<$Res>
    implements $NftContentCopyWith<$Res> {
  _$NftContentCopyWithImpl(this._self, this._then);

  final NftContent _self;
  final $Res Function(NftContent) _then;

/// Create a copy of NftContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NftContent].
extension NftContentPatterns on NftContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NftContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NftContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NftContent value)  $default,){
final _that = this;
switch (_that) {
case _NftContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NftContent value)?  $default,){
final _that = this;
switch (_that) {
case _NftContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NftContent() when $default != null:
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _NftContent():
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _NftContent() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NftContent implements NftContent {
  const _NftContent({required this.title, required this.description});
  factory _NftContent.fromJson(Map<String, dynamic> json) => _$NftContentFromJson(json);

@override final  String title;
@override final  String description;

/// Create a copy of NftContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NftContentCopyWith<_NftContent> get copyWith => __$NftContentCopyWithImpl<_NftContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NftContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NftContent&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'NftContent(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$NftContentCopyWith<$Res> implements $NftContentCopyWith<$Res> {
  factory _$NftContentCopyWith(_NftContent value, $Res Function(_NftContent) _then) = __$NftContentCopyWithImpl;
@override @useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$NftContentCopyWithImpl<$Res>
    implements _$NftContentCopyWith<$Res> {
  __$NftContentCopyWithImpl(this._self, this._then);

  final _NftContent _self;
  final $Res Function(_NftContent) _then;

/// Create a copy of NftContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_NftContent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
