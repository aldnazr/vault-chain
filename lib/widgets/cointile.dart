import 'package:flutter/material.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/data/model/market_model.dart';

class Cointile extends StatelessWidget {
  final MarketModel coin;
  const Cointile({required this.coin, super.key});

  @override
  Widget build(BuildContext context) {
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
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            Formatter.formatPercent(coin.priceChangePercentage24h),
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
  }
}
