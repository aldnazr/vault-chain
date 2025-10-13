import 'package:flutter/material.dart';
import 'package:vault_chain/data/model/top_coin_model.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class TopCoinProvider with ChangeNotifier {
  final _api = CoinGeckoApi();

  bool isLoading = true;
  String? error;
  TopCoinModel? topCoins;

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    await fetchTopCoins();

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchTopCoins() async {
    try {
      final result = await _api.getTrendings(Endpoint.trending());

      topCoins = result; // result is now a single TopCoinModel object

      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }
}
