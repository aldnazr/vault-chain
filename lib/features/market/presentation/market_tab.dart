import 'package:flutter/material.dart';
import 'package:vault_chain/features/market/presentation/crypto_tab_bar.dart';
import 'package:vault_chain/features/market/presentation/top_coin_tab_bar.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            dividerHeight: 0.8,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'All Coins'),
              Tab(text: 'Trending Coins'),
            ],
          ),
          Expanded(
            child: TabBarView(children: [CryptoTabBar(), TopCoinTabBar()]),
          ),
        ],
      ),
    );
  }
}
