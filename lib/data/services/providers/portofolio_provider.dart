import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_ce/hive.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';

class PortofolioProvider with ChangeNotifier {
  static const String _portofolioBox = "portofolioBox";
  static const String boxKey = "portofolioData";

  List<PortofolioModel> _portofolio = [];
  final Set<String> _favoriteIds = {};

  List<PortofolioModel> get portofolio => _portofolio;
  bool isFavorite(String id) => _favoriteIds.contains(id);

  Future<void> init() async {
    await Hive.openBox(_portofolioBox);
    await loadPortofolio();
  }

  Future<void> loadPortofolio() async {
    final box = Hive.box(_portofolioBox);
    final stored = box.get(boxKey, defaultValue: []);
    if (stored is List) {
      _portofolio = stored
          .map((e) => PortofolioModel.fromMap(Map<String, dynamic>.from(e)))
          .toList();
    } else {
      _portofolio = [];
    }
    _favoriteIds
      ..clear()
      ..addAll(_portofolio.map((e) => e.id));

    notifyListeners();
  }

  Future<void> toggleFavorite(
    PortofolioModel portofolio,
    bool refreshData,
  ) async {
    final box = Hive.box(_portofolioBox);
    final stored = box.get(boxKey, defaultValue: []);
    if (_favoriteIds.contains(portofolio.id)) {
      stored.removeWhere((e) => e["id"] == portofolio.id);
      _favoriteIds.remove(portofolio.id);
    } else {
      stored.add(portofolio.toMap());
      _favoriteIds.add(portofolio.id);
    }
    await box.put(boxKey, stored);
    if (refreshData) {
      await loadPortofolio();
    } else {
      notifyListeners();
    }
  }
}
