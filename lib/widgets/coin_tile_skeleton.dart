import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoinTileSkeleton extends StatelessWidget {
  const CoinTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
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
}
