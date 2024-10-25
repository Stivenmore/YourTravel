import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:yourtravel/domain/models/places_model.dart';

class PlacesDatasource {
  Future<List<PlacesModel>> getPlaces() async {
    try {
      final resp = await rootBundle.loadString('assets/json/places.json');
      final decode = json.decode(resp) as Map<String, dynamic>;
      List<PlacesModel> places = decode['objects']['taps']
          .map<PlacesModel>((e) => PlacesModel.fromJson(e))
          .toList();
      return places;
    } catch (e) {
      return [];
    }
  }
}
