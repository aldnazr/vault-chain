import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';
import 'package:vault_chain/data/services/providers/top_coin_provider.dart';
import 'package:vault_chain/widgets/price_change_icon.dart';
import 'package:vault_chain/widgets/coin_tile_skeleton.dart';
import 'package:vault_chain/widgets/error_handler.dart';

class TopCoinTabBar extends StatelessWidget {
  const TopCoinTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TopCoinProvider>(
      builder: (context, topCoinProvider, child) {
        final topCoins = topCoinProvider.topCoins?.coins;
        if (topCoinProvider.isLoading) {
          return CoinTileSkeleton();
        }
        if (topCoinProvider.error != null) {
          return ErrorHandler(
            errorText: "Error: ${topCoinProvider.error}",
            onPressed: () async => await topCoinProvider.init(),
          );
        }
        if (topCoins == null || topCoins.isEmpty) {
          return const Center(child: Text("No data found"));
        }
        return RefreshIndicator(
          onRefresh: () async => await topCoinProvider.init(),
          child: ListView.builder(
            padding: EdgeInsets.only(top: 3),
            itemCount: topCoins.length,
            itemBuilder: (context, index) {
              final coin = topCoins[index].item;
              final priceChange =
                  coin.data.priceChangePercentage24h['usd'] ?? 0.0;
              return Column(
                children: [
                  ListTile(
                    key: ValueKey(coin.id),
                    minTileHeight: 0,
                    contentPadding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      left: 18.0,
                      right: 16.0,
                    ),
                    onTap: () =>
                        Navigator.of(context, rootNavigator: true).pushNamed(
                          '/detail_page',
                          arguments: PortofolioModel(
                            id: coin.id,
                            image: coin.large,
                            name: coin.name,
                            symbol: coin.symbol,
                            marketCapRank: coin.marketCapRank,
                          ),
                        ),
                    leading: CircleAvatar(
                      radius: 18,
                      foregroundImage: NetworkImage(coin.small),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      coin.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(coin.symbol.toUpperCase()),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Formatter.formatCurrency(
                            coin.data.priceChangePercentage24h['idr'] ?? 0.0,
                          ),
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PriceChangeIcon(priceChange <= 0),
                            Text(
                              Formatter.formatPercent(priceChange),
                              style: TextStyle(
                                fontSize: 13,
                                color: priceChange < 0
                                    ? Colors.red
                                    : Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (index < topCoins.length - 1)
                    const Divider(height: 0, thickness: 1),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
