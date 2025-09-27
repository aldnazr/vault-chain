import 'package:flutter/material.dart';
import 'package:vault_chain/widgets/default_appbar.dart';

class TradeTab extends StatefulWidget {
  const TradeTab({super.key});

  @override
  State<TradeTab> createState() => _TradeTabState();
}

class _TradeTabState extends State<TradeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppbar());
  }
}
