import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class TabProvider extends ChangeNotifier {
  final PersistentTabController controller = PersistentTabController(
    initialIndex: 0,
    historyLength: 1,
  );

  void jumpToTab(int index) {
    controller.jumpToTab(index);
  }
}
