import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:vault_chain/core/utils/util.dart';
import 'package:vault_chain/presentation/pages/market_tab.dart';
import 'package:vault_chain/presentation/pages/portofolio_tab.dart';
import 'package:vault_chain/presentation/pages/trade_tab.dart';
import 'package:vault_chain/presentation/pages/wallet_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0, historyLength: 1);
  }

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: const MarketTab(),
      item: ItemConfig(
        title: "Market",
        icon: SvgPicture.asset(
          'assets/icons/finance.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        ),
      ),
    ),
    PersistentTabConfig(
      screen: const PortofolioTab(),
      item: ItemConfig(
        title: "Portofolio",
        icon: SvgPicture.asset(
          'assets/icons/star.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        ),
      ),
    ),
    PersistentTabConfig(
      screen: const TradeTab(),
      item: ItemConfig(
        title: "Trade",
        icon: SvgPicture.asset(
          'assets/icons/trade.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        ),
      ),
    ),
    PersistentTabConfig(
      screen: const WalletTab(),
      item: ItemConfig(
        title: "Wallet",
        icon: SvgPicture.asset(
          'assets/icons/wallet.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: _tabs(),
      controller: _controller,
      navBarBuilder: (navBarConfig) => Style8BottomNavBar(
        navBarConfig: navBarConfig,
        height: 65.0,
        itemPadding: EdgeInsets.all(8.0),
        navBarDecoration: NavBarDecoration(color: defaultBackground(context)),
      ),
      animatedTabBuilder:
          (context, index, animationValue, newIndex, oldIndex, child) {
            // No animation: return the child directly
            return child;
          },
    );
  }
}
