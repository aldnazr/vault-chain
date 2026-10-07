// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketModel {

 String? get id; String? get symbol; String? get name; String? get image;@JsonKey(name: 'current_price') num? get currentPrice;@JsonKey(name: 'market_cap_rank') num? get marketCapRank;@JsonKey(name: 'price_change_percentage_24h') num? get priceChangePercentage24h;
/// Create a copy of MarketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketModelCopyWith<MarketModel> get copyWith => _$MarketModelCopyWithImpl<MarketModel>(this as MarketModel, _$identity);

  /// Serializes this MarketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MarketModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.symbol, _this.symbol) || other.symbol == _this.symbol)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.currentPrice, _this.currentPrice) || other.currentPrice == _this.currentPrice)&&(identical(other.marketCapRank, _this.marketCapRank) || other.marketCapRank == _this.marketCapRank)&&(identical(other.priceChangePercentage24h, _this.priceChangePercentage24h) || other.priceChangePercentage24h == _this.priceChangePercentage24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MarketModel;
  return Object.hash(runtimeType,_this.id,_this.symbol,_this.name,_this.image,_this.currentPrice,_this.marketCapRank,_this.priceChangePercentage24h);
}

@override
String toString() {
  final _this = this as MarketModel;
  return 'MarketModel(id: ${_this.id}, symbol: ${_this.symbol}, name: ${_this.name}, image: ${_this.image}, currentPrice: ${_this.currentPrice}, marketCapRank: ${_this.marketCapRank}, priceChangePercentage24h: ${_this.priceChangePercentage24h})';
}


}

/// @nodoc
abstract mixin class $MarketModelCopyWith<$Res>  {
  factory $MarketModelCopyWith(MarketModel value, $Res Function(MarketModel) _then) = _$MarketModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? symbol, String? name, String? image,@JsonKey(name: 'current_price') num? currentPrice,@JsonKey(name: 'market_cap_rank') num? marketCapRank,@JsonKey(name: 'price_change_percentage_24h') num? priceChangePercentage24h
});




}
/// @nodoc
class _$MarketModelCopyWithImpl<$Res>
    implements $MarketModelCopyWith<$Res> {
  _$MarketModelCopyWithImpl(this._self, this._then);

  final MarketModel _self;
  final $Res Function(MarketModel) _then;

/// Create a copy of MarketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? symbol = freezed,Object? name = freezed,Object? image = freezed,Object? currentPrice = freezed,Object? marketCapRank = freezed,Object? priceChangePercentage24h = freezed,}) {
  return _then(MarketModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as num?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as num?,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketModel].
extension MarketModelPatterns on MarketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketModel value)  $default,){
final _that = this;
switch (_that) {
case _MarketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketModel value)?  $default,){
final _that = this;
switch (_that) {
case _MarketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? symbol,  String? name,  String? image, @JsonKey(name: 'current_price')  num? currentPrice, @JsonKey(name: 'market_cap_rank')  num? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  num? priceChangePercentage24h)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCapRank,_that.priceChangePercentage24h);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? symbol,  String? name,  String? image, @JsonKey(name: 'current_price')  num? currentPrice, @JsonKey(name: 'market_cap_rank')  num? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  num? priceChangePercentage24h)  $default,) {final _that = this;
switch (_that) {
case _MarketModel():
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCapRank,_that.priceChangePercentage24h);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? symbol,  String? name,  String? image, @JsonKey(name: 'current_price')  num? currentPrice, @JsonKey(name: 'market_cap_rank')  num? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  num? priceChangePercentage24h)?  $default,) {final _that = this;
switch (_that) {
case _MarketModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCapRank,_that.priceChangePercentage24h);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketModel implements MarketModel {
  const _MarketModel({this.id, this.symbol, this.name, this.image, @JsonKey(name: 'current_price') this.currentPrice, @JsonKey(name: 'market_cap_rank') this.marketCapRank, @JsonKey(name: 'price_change_percentage_24h') this.priceChangePercentage24h});
  factory _MarketModel.fromJson(Map<String, dynamic> json) => _$MarketModelFromJson(json);

@override final  String? id;
@override final  String? symbol;
@override final  String? name;
@override final  String? image;
@override@JsonKey(name: 'current_price') final  num? currentPrice;
@override@JsonKey(name: 'market_cap_rank') final  num? marketCapRank;
@override@JsonKey(name: 'price_change_percentage_24h') final  num? priceChangePercentage24h;

/// Create a copy of MarketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketModelCopyWith<_MarketModel> get copyWith => __$MarketModelCopyWithImpl<_MarketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.marketCapRank, marketCapRank) || other.marketCapRank == marketCapRank)&&(identical(other.priceChangePercentage24h, priceChangePercentage24h) || other.priceChangePercentage24h == priceChangePercentage24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,symbol,name,image,currentPrice,marketCapRank,priceChangePercentage24h);
}

@override
String toString() {
    return 'MarketModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCapRank: $marketCapRank, priceChangePercentage24h: $priceChangePercentage24h)';
}


}

/// @nodoc
abstract mixin class _$MarketModelCopyWith<$Res> implements $MarketModelCopyWith<$Res> {
  factory _$MarketModelCopyWith(_MarketModel value, $Res Function(_MarketModel) _then) = __$MarketModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? symbol, String? name, String? image,@JsonKey(name: 'current_price') num? currentPrice,@JsonKey(name: 'market_cap_rank') num? marketCapRank,@JsonKey(name: 'price_change_percentage_24h') num? priceChangePercentage24h
});




}
/// @nodoc
class __$MarketModelCopyWithImpl<$Res>
    implements _$MarketModelCopyWith<$Res> {
  __$MarketModelCopyWithImpl(this._self, this._then);

  final _MarketModel _self;
  final $Res Function(_MarketModel) _then;

/// Create a copy of MarketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? symbol = freezed,Object? name = freezed,Object? image = freezed,Object? currentPrice = freezed,Object? marketCapRank = freezed,Object? priceChangePercentage24h = freezed,}) {
  return _then(_MarketModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as num?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as num?,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
