import 'package:flutter/material.dart';
import 'package:vault_chain/widgets/crypto_tab_bar.dart';
import 'package:vault_chain/widgets/nft_tab_bar.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            padding: EdgeInsets.only(bottom: 2),
            dividerHeight: 0,
            tabs: [
              Tab(text: 'Crypto'),
              Tab(text: 'NFT'),
            ],
          ),
          Expanded(child: TabBarView(children: [CryptoTabBar(), NftTabBar()])),
        ],
      ),
    );
  }
}
