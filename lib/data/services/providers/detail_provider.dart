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

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    try {
      await fetchDetail();
      await fetchOhlc();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchDetail({String? id}) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      while (id == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      _coinDetail = await _api.getDetails(Endpoint.details(id));
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchOhlc({String? id}) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      while (id == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      _coinOhlc = await _api.getOhlc(Endpoint.ohlc(id));
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
