import 'package:flutter/material.dart';
import 'package:vault_chain/data/model/market_model.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class MarketProvider with ChangeNotifier {
  final _api = CoinGeckoApi();

  bool isLoading = true;
  String? error;
  List<MarketModel> markets = [];
  List<MarketModel> topMarkets = [];

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    try {
      await fetchMarkets();
      await fetchTopMarkets();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchMarkets() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      markets = await _api.getMarkets(Endpoint.markets());
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchTopMarkets() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      topMarkets = await _api.getMarkets(Endpoint.markets(perPage: 10));
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
