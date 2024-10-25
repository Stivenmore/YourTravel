import 'package:yourtravel/data/datasource/taps_datasource.dart';
import 'package:yourtravel/domain/models/taps_model.dart';
import 'package:yourtravel/domain/repository/tap_repository.dart';

class TapRepositoryImpl implements TapRepository {
  final TapDataSource dataSource;

  TapRepositoryImpl({required this.dataSource});

  @override
  Future<List<TapsModel>> getTaps() async{
    return await dataSource.getTaps();
  }
}
