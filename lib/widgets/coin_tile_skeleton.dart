import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoinTileSkeleton extends StatelessWidget {
  const CoinTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Bone.circle(size: 48),
            title: Bone.text(words: 2),
            subtitle: Bone.text(words: 1),
            trailing: Bone.text(words: 1),
          );
        },
      ),
    );
  }
}
