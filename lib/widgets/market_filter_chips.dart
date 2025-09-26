import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/filter_provider.dart';

class MarketFilterChips extends StatelessWidget {
  const MarketFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterProvider>(
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
    );
  }
}
