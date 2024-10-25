import 'package:flutter/foundation.dart';
import 'package:yourtravel/data/datasource/taps_datasource.dart';
import 'package:yourtravel/data/repository/tap_repository_impl.dart';
import 'package:yourtravel/domain/models/taps_model.dart';
import 'package:yourtravel/domain/repository/tap_repository.dart';

enum TabState { loading, success, failure }

class TapBloc {
  final TapRepository tapRepository =
      TapRepositoryImpl(dataSource: TapDataSource());

  TapBloc();

  final ValueNotifier<List<TapsModel>> taps =
      ValueNotifier<List<TapsModel>>([]);
  final ValueNotifier<TapsModel> tap =
      ValueNotifier<TapsModel>(TapsModel.empty);
  final ValueNotifier<TabState> state =
      ValueNotifier<TabState>(TabState.loading);

  Future<void> getTaps() async {
    try {
      state.value = TabState.loading;
      await Future.delayed(const Duration(seconds: 2));
      final tapsList = await tapRepository.getTaps();
      taps.value = tapsList;
      state.value = TabState.success;
    } catch (e) {
      state.value = TabState.failure;
    }
  }

  Future<void> selectTap(TapsModel tap) async {
    this.tap.value = tap;
  }

  void dispose() {
    state.dispose();
    taps.dispose();
    tap.dispose();
  }
}
