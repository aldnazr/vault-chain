import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/widgets/coin_tile_skeleton.dart';
import 'package:vault_chain/widgets/cointile.dart';
import 'package:vault_chain/widgets/market_filter_chips.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

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

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MarketFilterChips(),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => marketProvider.fetchTopMarkets(),
                child: Cointile(listCoin: topMarket),
              ),
            ),
          ],
        );
      },
    );
  }
}
