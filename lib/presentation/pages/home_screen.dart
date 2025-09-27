import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:vault_chain/presentation/pages/market_tab.dart';
import 'package:vault_chain/presentation/pages/portofolio_tab.dart';
import 'package:vault_chain/presentation/pages/trade_tab.dart';
import 'package:vault_chain/presentation/pages/wallet_tab.dart';
import 'package:vault_chain/core/utils/util.dart';

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
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/finance.svg',
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
      ),
      title: "Market",
      activeColorPrimary: Colors.blueAccent,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/star.svg',
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
      ),
      title: "Portofolio",
      activeColorPrimary: Colors.blueAccent,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/trade.svg',
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
      ),
      title: "Trade",
      activeColorPrimary: Colors.blueAccent,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/wallet.svg',
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
      ),
      title: "Wallet",
      activeColorPrimary: Colors.blueAccent,
      inactiveColorPrimary: Colors.grey,
    ),
  ];

  List<Widget> _buildScreens() => [
    const MarketTab(),
    const PortofolioTab(),
    const TradeTab(),
    const WalletTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultBackground(context),
        surfaceTintColor: defaultBackground(context),
        actionsPadding: EdgeInsets.only(right: 4.0),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/app_logo.png'),
            ),
            SizedBox(width: 10.0),
            Text(
              'Vault Chain',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Pengaturan',
            onPressed: () => Navigator.of(
              context,
              rootNavigator: true,
            ).pushNamed('/setting'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: defaultBackground(context),
        navBarHeight: 65.0,
        hideNavigationBarWhenKeyboardAppears: true,
        navBarStyle: NavBarStyle.style9,
        onWillPop: (context) async {
          SystemNavigator.pop(animated: true);
          return true;
        },
        // hideOnScrollSettings: HideOnScrollSettings(
        //   scrollControllers: [context.watch<ScrollProvider>().scrollController],
        // ),
        // onItemSelected: (value) {
        //   setState(() {});
        // },
      ),
    );
  }
}
