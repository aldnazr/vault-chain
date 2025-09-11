import 'package:flutter/widgets.dart';
import 'package:vault_chain/services/api/coin_gecko_api.dart';
import 'package:vault_chain/services/api/endpoint.dart';

class DetailProvider with ChangeNotifier {
  final _api = CoinGeckoApi();
  bool isLoading = true;
  String? error;
  Map<String, dynamic> priceChanges = {};

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    try {
      await fetchPriceChanges();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchPriceChanges() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      priceChanges = await _api.fetchPriceChanges(
        Endpoint.coinDetail('bitcoin'),
      );
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
