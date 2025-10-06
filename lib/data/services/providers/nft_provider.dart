import 'package:flutter/material.dart';
import 'package:vault_chain/data/model/nft_collection.dart';
import 'package:vault_chain/data/model/nft_detail.dart';
import 'package:vault_chain/data/services/api/coin_gecko_api.dart';
import 'package:vault_chain/data/services/api/endpoint.dart';

class NftProvider with ChangeNotifier {
  final _api = CoinGeckoApi();

  bool isLoading = true;
  bool isLoadingMore = false;
  int currentPage = 1;
  String? error;
  List<NftCollection> nfts = [];
  List<String> nftIds = [];

  // cache detail tiap NFT
  final Map<String, NftDetail> _nftCache = {};
  NftDetail? getNftById(String id) => _nftCache[id];

  Future<void> init() async {
    isLoading = true;
    notifyListeners();

    currentPage = 1;
    nfts.clear();
    await fetchNfts(page: currentPage);

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchNfts({int page = 1, int perPage = 20}) async {
    try {
      final result = await _api.getNfts(
        Endpoint.nfts(page: page, perPage: perPage),
      );

      if (page == 1) {
        nfts = result;
      } else {
        nfts.addAll(result);
      }

      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }

  Future<void> fetchDetailNft(String id) async {
    if (_nftCache.containsKey(id)) return;

    isLoading = true;
    error = null;
    notifyListeners();

    try {
      final detail = await _api.getNftsById(Endpoint.nftById(id));
      _nftCache[id] = detail;
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchNextPage() async {
    if (isLoadingMore) return;
    isLoadingMore = true;
    notifyListeners();

    currentPage++;
    await fetchNfts(page: currentPage);

    isLoadingMore = false;
    notifyListeners();
  }
}
