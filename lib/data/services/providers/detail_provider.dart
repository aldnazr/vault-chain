import 'package:flutter/widgets.dart';
import 'package:vault_chain/data/model/coin_detail.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class DetailProvider with ChangeNotifier {
  final _api = CoinGeckoApi();
  var isLoading = true;
  String? error;
  CoinDetail? coinDetail;

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    try {
      await fetchDetail();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchDetail({String id = 'bitcoin'}) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      coinDetail = await _api.getDetails(Endpoint.coinDetail(id));
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
