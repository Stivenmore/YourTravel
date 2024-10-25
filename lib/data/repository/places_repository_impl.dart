import 'package:yourtravel/data/datasource/places_datasource.dart';
import 'package:yourtravel/domain/models/places_model.dart';
import 'package:yourtravel/domain/repository/places_repository.dart';

class PlacesRepositoryImpl implements PlacesRepository {
  final PlacesDatasource dataSource;

  PlacesRepositoryImpl({required this.dataSource});
  @override
  Future<List<PlacesModel>> getPlaces() async{
    return await dataSource.getPlaces();
  }
}
