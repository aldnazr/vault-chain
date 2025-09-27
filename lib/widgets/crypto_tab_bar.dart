import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/core/utils/util.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/widgets/coin_tile_skeleton.dart';

class CryptoTabBar extends StatelessWidget {
  const CryptoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketProvider>(
      builder: (context, marketProvider, _) {
        final topMarket = marketProvider.topMarkets;

        if (marketProvider.isLoading) {
          return CoinTileSkeleton();
        }
        if (marketProvider.error != null) {
          return Center(child: Text("Error: ${marketProvider.error}"));
        }
        if (topMarket.isEmpty) {
          return const Center(child: Text("No data found"));
        }

        return RefreshIndicator(
          onRefresh: () => marketProvider.fetchTopMarkets(),
          child: ListView.builder(
            primary: false,
            // controller: context.read<ScrollProvider>().scrollController,
            itemCount: topMarket.length,
            itemBuilder: (context, index) {
              final coin = topMarket[index];
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      left: 18.0,
                      right: 16.0,
                    ),
                    onTap: () => Navigator.of(
                      context,
                      rootNavigator: true,
                    ).pushNamed('/detail_page', arguments: coin.id),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        coin.image.replaceAll('/large/', '/small_2x/'),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      coin.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(coin.symbol.toUpperCase()),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Formatter.formatCurrency(coin.currentPrice),
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: defaultTitleColor(context),
                          ),
                        ),
                        Text(
                          Formatter.formatPercent(
                            coin.priceChangePercentage24h,
                          ),
                          style: TextStyle(
                            fontSize: 14,
                            color: coin.priceChangePercentage24h < 0
                                ? Colors.red
                                : Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 0, thickness: 0.7),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
