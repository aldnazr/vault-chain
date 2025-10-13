import 'package:flutter/material.dart';
import 'package:vault_chain/widgets/crypto_tab_bar.dart';
import 'package:vault_chain/widgets/default_appbar.dart';
import 'package:vault_chain/widgets/top_coin_tab_bar.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: DefaultAppbar(),
        body: Column(
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
      ),
    );
  }
}
