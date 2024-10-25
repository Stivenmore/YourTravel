import 'package:yourtravel/domain/models/places_model.dart';

abstract class PlacesRepository {
  Future<List<PlacesModel>> getPlaces();
}
