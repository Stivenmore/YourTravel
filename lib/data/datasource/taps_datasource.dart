import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:yourtravel/domain/models/taps_model.dart';

class TapDataSource {
  Future<List<TapsModel>> getTaps() async {
    try {
      final resp = await rootBundle.loadString('assets/json/taps.json');
      final decode = json.decode(resp) as Map<String, dynamic>;
      List<TapsModel> taps = decode['objects']['taps']
          .map<TapsModel>((e) => TapsModel.fromJson(e))
          .toList();
      return taps;
    } catch (e) {
      return [];
    }
  }
}
