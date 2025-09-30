import 'package:flutter/widgets.dart';
import 'package:vault_chain/data/model/coin_detail.dart';
import 'package:vault_chain/data/model/coin_ohlc.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class DetailProvider with ChangeNotifier {
  final _api = CoinGeckoApi();
  var isLoading = true;
  String? error;

  CoinDetail? _coinDetail;
  List<CoinOhlc>? _coinOhlc;
  CoinDetail? get coinDetail => _coinDetail;
  List<CoinOhlc>? get coinOhlc => _coinOhlc;

  Future<void> init(String id) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      await fetchDetail(id, notify: false);
      await fetchOhlc(id, notify: false);
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchDetail(String id, {bool notify = true}) async {
    if (notify) {
      isLoading = true;
      error = null;
      notifyListeners();
    }

    try {
      _coinDetail = await _api.getDetails(Endpoint.details(id));
    } catch (e) {
      error = e.toString();
    }

    if (notify) {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchOhlc(String id, {bool notify = true}) async {
    if (notify) {
      isLoading = true;
      error = null;
      notifyListeners();
    }

    try {
      _coinOhlc = await _api.getOhlc(Endpoint.ohlc(id));
    } catch (e) {
      error = e.toString();
    }

    if (notify) {
      isLoading = false;
      notifyListeners();
    }
  }
}
