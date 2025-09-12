import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_ce/hive.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';

class PortofolioProvider with ChangeNotifier {
  static const String _ohlcBoxName = "ohlcBox";

  List<PortofolioModel> _portofolio = [];
  List<PortofolioModel> get portofolio => _portofolio;

  Future<void> init() async {
    await Hive.openBox(_ohlcBoxName);
    loadPortofolio();
  }

  Future<void> savePortofolio(PortofolioModel portofolio) async {
    final box = Hive.box(_ohlcBoxName);

    // ambil data lama
    List stored = box.get("portofolioData", defaultValue: []);

    // cek apakah id sudah ada
    final exists = stored.any((e) => e["id"] == portofolio.id);

    if (!exists) {
      stored.add(portofolio.toMap());
      await box.put("portofolioData", stored);
      loadPortofolio();
    }
  }

  void loadPortofolio() {
    final box = Hive.box(_ohlcBoxName);
    final stored = box.get("portofolioData", defaultValue: []);

    if (stored is List) {
      _portofolio = stored
          .map((e) => PortofolioModel.fromMap(Map<String, dynamic>.from(e)))
          .toList();
    } else {
      _portofolio = [];
    }

    notifyListeners();
  }
}
