import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vault_chain/data/model/coin_detail.dart';
import 'package:vault_chain/data/model/coin_ohlc.dart';
import 'package:vault_chain/data/model/market_model.dart';

class CoinGeckoApi {
  static final _baseUrl = 'https://api.coingecko.com/api/v3';
  static final _header = {'x-cg-demo-api-key': 'CG-fG8KAiNzkZtwkafsmTVTjnXT'};

  Future<List<MarketModel>> getMarkets(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");
    final response = await http.get(url, headers: _header);

    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body);
      return body.map((e) => MarketModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to fetch data: ${response.statusCode}");
    }
  }

  Future<CoinDetail> getDetails(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");

    final response = await http.get(url, headers: _header);

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);
      return CoinDetail.fromJson(body);
    } else {
      throw Exception("Failed to fetch data: ${response.statusCode}");
    }
  }

  Future<List<CoinOhlc>> getOhlc(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");

    final response = await http.get(url, headers: _header);

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return (body as List).map((e) => CoinOhlc.fromList(e)).toList();
    } else {
      throw Exception("Failed to fetch data: ${response.statusCode}");
    }
  }

  Future<List<CoinOhlc>> getNfts(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");

    final response = await http.get(url, headers: _header);

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return (body as List).map((e) => CoinOhlc.fromList(e)).toList();
    } else {
      throw Exception("Failed to fetch data: ${response.statusCode}");
    }
  }
}
