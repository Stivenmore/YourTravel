import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourtravel/domain/models/taps_model.dart';
import 'package:yourtravel/presentacion/yourtrip/home/widgets/header_home_widget.dart';
import 'package:yourtravel/presentacion/yourtrip/home/widgets/location_home_widget.dart';
import 'package:yourtravel/presentacion/yourtrip/home/widgets/taps_widget.dart';
import 'package:yourtravel/presentacion/utils/colors.dart';
import 'package:yourtravel/domain/bloc/tab_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TapBloc tapNotifier = TapBloc();
  TapsModel tap = TapsModel.empty;

  @override
  void initState() {
    tapNotifier.getTaps();
    tapNotifier.tap.addListener(() {
      setState(() {
        tap = tapNotifier.tap.value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const HeaderHome(),
              const LocationsHome(),
              const SizedBox(
                height: 14,
              ),
              TextField(
                cursorColor: ColorsNative.colorWhite,
                cursorHeight: 17,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 10.0),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 15.5, fontWeight: FontWeight.w300),
                  hintText: '¿A dónde te gustaria ir?',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 17.5, fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: ColorsNative.colorWhite.withOpacity(0.5),
                    size: 20,
                  ),
                  filled: true,
                  fillColor: ColorsNative.colorWhite.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ValueListenableBuilder(
                valueListenable: tapNotifier.state,
                builder: (BuildContext context, TabState value, Widget? child) {
                  if (value == TabState.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (value == TabState.failure) {
                    return const Center(
                      child: Text('Error al cargar los datos'),
                    );
                  }
                  if (value == TabState.success) {
                    final taps = tapNotifier.taps.value;
                    return TapsWidget(
                        taps: taps, tapNotifier: tapNotifier, tap: tap);
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
