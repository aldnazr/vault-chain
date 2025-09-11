import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:vault_chain/data/services/providers/filter_provider.dart';
import 'package:vault_chain/data/services/providers/market_provider.dart';
import 'package:vault_chain/data/services/providers/scroll_provider.dart';
import 'package:vault_chain/core/utils/formatter.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketProvider>(
      builder: (context, marketProvider, _) {
        final topMarket = marketProvider.topMarkets;

        if (marketProvider.isLoading && marketProvider.topMarkets.isEmpty) {
          return Skeletonizer.zone(
            ignoreContainers: true,
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Bone.button(borderRadius: BorderRadius.circular(8.0)),
                        SizedBox(width: 8),
                        Bone.button(borderRadius: BorderRadius.circular(8.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Bone.circle(size: 48),
                          title: Bone.text(words: 2),
                          subtitle: Bone.text(words: 1),
                          trailing: Bone.text(words: 1),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
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
            Consumer<FilterProvider>(
              builder: (context, filterProvider, _) {
                final filters = ["Kripto", "NFT"];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8.0,
                    children: filters.map((e) {
                      return ChoiceChip(
                        label: Text(e),
                        selected: filterProvider.selected == e,
                        onSelected: (_) => filterProvider.setFilter(e),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => marketProvider.init(),
                child: Skeletonizer(
                  enabled: marketProvider.isLoading,
                  ignoreContainers: true,
                  child: ListView.builder(
                    controller: context.read<ScrollProvider>().scrollController,
                    itemCount: topMarket.length,
                    itemBuilder: (context, index) {
                      final coin = topMarket[index];
                      return ListTile(
                        onTap: () => Navigator.of(
                          context,
                          rootNavigator: true,
                        ).pushNamed('/detail_page', arguments: coin.id),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(coin.image),
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
                              style: TextStyle(fontSize: 16.0),
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
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
