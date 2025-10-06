import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/nft_provider.dart';
import 'package:vault_chain/widgets/coin_tile_skeleton.dart';
import 'package:vault_chain/widgets/error_handler.dart';

class NftTabBar extends StatelessWidget {
  const NftTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NftProvider>(
      builder: (context, nftProvider, child) {
        final nfts = nftProvider.nfts;
        if (nftProvider.isLoading) {
          return CoinTileSkeleton();
        }
        if (nftProvider.error != null) {
          return ErrorHandler(
            errorText: "Error: ${nftProvider.error}",
            onPressed: () async => await nftProvider.init(),
          );
        }
        if (nfts.isEmpty) {
          return const Center(child: Text("No data found"));
        }
        return RefreshIndicator(
          onRefresh: () async => await nftProvider.init(),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (!nftProvider.isLoadingMore &&
                  scrollInfo.metrics.pixels >=
                      scrollInfo.metrics.maxScrollExtent * 0.9) {
                // sudah 90% mendekati bawah → load page berikutnya
                nftProvider.fetchNextPage();
              }
              return false;
            },
            child: ListView.builder(
              padding: EdgeInsets.only(top: 3),
              itemCount: nfts.length,
              itemBuilder: (context, index) {
                final id = nftProvider.nftIds[index];
                final cached = nftProvider.getNftById(id);
                return Column(
                  children: [
                    ListTile(title: Text(cached?.name ?? "Null")),
                    if (index < nfts.length - 1)
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
