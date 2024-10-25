import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yourtravel/domain/bloc/tab_bloc.dart';
import 'package:yourtravel/domain/models/taps_model.dart';
import 'package:yourtravel/presentacion/utils/colors.dart';


class TapsWidget extends StatelessWidget {
  const TapsWidget({
    super.key,
    required this.taps,
    required this.tapNotifier,
    required this.tap,
  });

  final List<TapsModel> taps;
  final TapBloc tapNotifier;
  final TapsModel tap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: taps.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 35.0),
            child: GestureDetector(
              onTap: () {
                tapNotifier.selectTap(taps[index]);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(taps[index].img),
                  Text(
                    taps[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: taps[index].name.length * 9.0,
                    height: 2,
                    decoration: BoxDecoration(
                      color: taps[index].id == tap.id
                          ? ColorsNative.colorWhite
                          : ColorsNative.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
