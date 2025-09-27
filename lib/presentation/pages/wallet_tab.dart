import 'package:flutter/material.dart';
import 'package:vault_chain/widgets/default_appbar.dart';

class WalletTab extends StatefulWidget {
  const WalletTab({super.key});

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppbar());
  }
}
