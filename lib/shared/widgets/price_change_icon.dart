import 'package:flutter/material.dart';

class PriceChangeIcon extends StatelessWidget {
  final bool isPositive;
  const PriceChangeIcon(this.isPositive, {super.key});

  @override
  Widget build(BuildContext context) {
    return isPositive
        ? const Icon(Icons.arrow_drop_down, color: Colors.red)
        : const Icon(Icons.arrow_drop_up, color: Colors.green);
  }
}
