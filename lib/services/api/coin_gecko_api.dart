import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vault_chain/model/market_model.dart';

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

  Future<Map<String, dynamic>> fetchPriceChanges(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");

    final response = await http.get(url, headers: _header);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final marketData = data['market_data'];

      return {
        '24h': marketData['price_change_percentage_24h'],
        '7d': marketData['price_change_percentage_7d'],
        '14d': marketData['price_change_percentage_14d'],
        '30d': marketData['price_change_percentage_30d'],
        '60d': marketData['price_change_percentage_60d'],
        '1y': marketData['price_change_percentage_1y'],
      };
    } else {
      throw Exception("Failed to fetch data: ${response.statusCode}");
    }
  }
}
