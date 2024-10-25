import 'package:yourtravel/domain/models/taps_model.dart';

abstract class TapRepository {
  Future<List<TapsModel>> getTaps();
}
