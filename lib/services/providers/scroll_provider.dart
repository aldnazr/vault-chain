import 'package:flutter/widgets.dart';

class ScrollProvider with ChangeNotifier {
  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
