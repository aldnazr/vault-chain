import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vault_chain/data/api/coin_gecko_api.dart';
import 'package:vault_chain/data/api/endpoint.dart';
import 'package:vault_chain/shared/models/coin_detail.dart';
import 'package:vault_chain/shared/models/coin_ohlc.dart';

part 'coin_detail_controller.g.dart';

class CoinDetailState {
  final CoinDetail? detail;
  final List<CoinOhlc>? ohlc;

  const CoinDetailState({this.detail, this.ohlc});
}

@riverpod
class CoinDetailController extends _$CoinDetailController {
  final _api = CoinGeckoApi();

  @override
  Future<CoinDetailState> build(String id) async {
    final detailFuture = _api.getDetails(Endpoint.details(id));
    final ohlcFuture = _api.getOhlc(Endpoint.ohlc(id));

    final results = await Future.wait([detailFuture, ohlcFuture]);

    return CoinDetailState(
      detail: results[0] as CoinDetail,
      ohlc: results[1] as List<CoinOhlc>,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final detailFuture = _api.getDetails(Endpoint.details(id));
      final ohlcFuture = _api.getOhlc(Endpoint.ohlc(id));

      final results = await Future.wait([detailFuture, ohlcFuture]);

      return CoinDetailState(
        detail: results[0] as CoinDetail,
        ohlc: results[1] as List<CoinOhlc>,
      );
    });
  }
}
