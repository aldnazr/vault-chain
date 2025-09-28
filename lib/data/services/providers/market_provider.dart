import 'package:flutter/material.dart';
import 'package:vault_chain/data/model/market_model.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class MarketProvider with ChangeNotifier {
  final _api = CoinGeckoApi();

  bool isLoading = true;
  bool isLoadingMore = false;
  int currentPage = 1;
  String? error;
  List<MarketModel> markets = [];

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    currentPage = 1;
    markets.clear();
    await fetchMarkets(page: currentPage);

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchMarkets({int page = 1}) async {
    try {
      final result = await _api.getMarkets(
        Endpoint.markets(perPage: 20, page: page),
      );

      if (page == 1) {
        markets = result;
      } else {
        markets.addAll(result);
      }

      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }

  Future<void> fetchNextPage() async {
    if (isLoadingMore) return;
    isLoadingMore = true;
    notifyListeners();

    currentPage++;
    await fetchMarkets(page: currentPage);

    isLoadingMore = false;
    notifyListeners();
  }
}
