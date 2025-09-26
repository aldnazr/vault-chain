import 'package:flutter/material.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/data/model/market_model.dart';

class Cointile extends StatelessWidget {
  final List<MarketModel> listCoin;
  const Cointile({required this.listCoin, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      // controller: context.read<ScrollProvider>().scrollController,
      itemCount: listCoin.length,
      itemBuilder: (context, index) {
        final coin = listCoin[index];
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
                backgroundImage: NetworkImage(coin.image, scale: 0.1),
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
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
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
            ),
            if (index < listCoin.length - 1)
              const Divider(height: 0, thickness: 0.7),
          ],
        );
      },
    );
  }
}
