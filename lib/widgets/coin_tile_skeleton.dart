import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoinTileSkeleton extends StatelessWidget {
  const CoinTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            minTileHeight: 60,
            contentPadding: EdgeInsets.only(
              top: 0,
              bottom: 0,
              left: 18.0,
              right: 16.0,
            ),
            leading: Bone.circle(size: 40),
            title: Bone.text(words: 2),
            subtitle: Bone.text(words: 1),
            trailing: Bone.text(words: 1),
          );
        },
      ),
    );
  }
}
