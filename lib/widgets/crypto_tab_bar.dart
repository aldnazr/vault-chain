import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/widgets/coin_tile_skeleton.dart';
import 'package:vault_chain/widgets/error_handler.dart';
import 'package:vault_chain/widgets/null_text.dart';
import 'package:vault_chain/widgets/price_change_icon.dart';

class CryptoTabBar extends StatelessWidget {
  const CryptoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketProvider>(
      builder: (context, marketProvider, _) {
        final market = marketProvider.markets;

        if (marketProvider.isLoading) {
          return CoinTileSkeleton();
        }
        if (marketProvider.error != null) {
          return ErrorHandler(
            errorText: "Error: ${marketProvider.error}",
            onPressed: () async => await marketProvider.init(),
          );
        }
        if (market.isEmpty) {
          return const Center(child: Text("No data found"));
        }

        return RefreshIndicator(
          onRefresh: () async => await marketProvider.init(),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (!marketProvider.isLoadingMore &&
                  scrollInfo.metrics.pixels >=
                      scrollInfo.metrics.maxScrollExtent * 0.9) {
                // sudah 90% mendekati bawah → load page berikutnya
                marketProvider.fetchNextPage();
              }
              return false;
            },
            child: ListView.builder(
              padding: EdgeInsets.only(top: 3),
              itemCount: market.length + (marketProvider.isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == market.length) {
                  return Center(
                    child: CircularProgressIndicator(
                      padding: EdgeInsets.all(16),
                    ),
                  );
                }
                final coin = market[index];
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
                              id: coin.id!,
                              image: coin.image!,
                              name: coin.name!,
                              symbol: coin.symbol!,
                              marketCapRank: coin.marketCapRank!,
                            ),
                          ),
                      leading: CircleAvatar(
                        radius: 18,
                        foregroundImage: NetworkImage(
                          coin.image!.replaceAll('/large/', '/small_2x/'),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        coin.name!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(coin.symbol!.toUpperCase()),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          coin.currentPrice == null
                              ? NullText()
                              : Text(
                                  Formatter.formatCurrency(coin.currentPrice!),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                          coin.priceChangePercentage24h == null
                              ? NullText()
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    PriceChangeIcon(
                                      coin.priceChangePercentage24h! <= 0,
                                    ),
                                    Text(
                                      Formatter.formatPercent(
                                        coin.priceChangePercentage24h!,
                                      ),
                                      style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            coin.priceChangePercentage24h! < 0
                                            ? Colors.red
                                            : Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                    const Divider(height: 0, thickness: 1),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
