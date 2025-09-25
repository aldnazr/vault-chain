import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:vault_chain/data/services/providers/filter_provider.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/data/services/providers/scroll_provider.dart';
import 'package:vault_chain/core/utils/formatter.dart';
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

        if (marketProvider.isLoading || marketProvider.topMarkets.isEmpty) {
          return CoinTileSkeleton();
        }
        if (marketProvider.error != null) {
          return Center(child: Text("Error: ${marketProvider.error}"));
        }
        if (marketProvider.topMarkets.isEmpty) {
          return const Center(child: Text("No data found"));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MarketFilterChips(),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => marketProvider.init(),
                child: ListView.builder(
                  controller: context.read<ScrollProvider>().scrollController,
                  itemCount: topMarket.length,
                  itemBuilder: (context, index) {
                    final coin = topMarket[index];
                    return Cointile(coin: coin);
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
