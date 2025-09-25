import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_ce/hive.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';

class PortofolioProvider with ChangeNotifier {
  static const String _portofolioBox = "portofolioBox";
  static const String boxKey = "portofolioData";

  List<PortofolioModel> _portofolio = [];
  List<PortofolioModel> get portofolio => _portofolio;

  Future<void> init() async {
    await Hive.openBox(_portofolioBox);
    loadPortofolio();
  }

  Future<void> savePortofolio(PortofolioModel portofolio) async {
    final box = Hive.box(_portofolioBox);

    // ambil data lama
    List stored = box.get(boxKey, defaultValue: []);

    // cek apakah id sudah ada
    final exists = stored.any((e) => e["id"] == portofolio.id);

    if (!exists) {
      stored.add(portofolio.toMap());
      await box.put(boxKey, stored);
      loadPortofolio();
    }
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

    notifyListeners();
  }

  Future<void> deletePortofolio(PortofolioModel portofolio) async {
    final box = Hive.box(_portofolioBox);

    List stored = box.get(boxKey, defaultValue: []);

    stored.removeWhere((e) => e["id"] == portofolio.id);
    await box.put(boxKey, stored);

    notifyListeners();
  }
}
