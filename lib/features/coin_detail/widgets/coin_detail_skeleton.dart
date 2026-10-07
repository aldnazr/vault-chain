import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoinDetailSkeleton extends StatelessWidget {
  const CoinDetailSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      ignoreContainers: true,
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Bone.text(words: 2, fontSize: 26.0),
              const SizedBox(height: 12),
              Bone.square(size: 280, borderRadius: BorderRadius.circular(8)),
              const SizedBox(height: 12),
              Bone.square(size: 80, borderRadius: BorderRadius.circular(12)),
              const SizedBox(height: 12),
              Bone.square(size: 55, borderRadius: BorderRadius.circular(12)),
            ],
          ),
        ),
      ),
    );
  }
}
