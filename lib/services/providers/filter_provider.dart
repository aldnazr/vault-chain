import 'package:flutter/material.dart';

class FilterProvider extends ChangeNotifier {
  String _selected = "Kripto";
  String get selected => _selected;

  void setFilter(String filter) {
    _selected = filter;
    notifyListeners();
  }
}
