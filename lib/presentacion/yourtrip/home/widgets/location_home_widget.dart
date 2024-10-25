import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourtravel/presentacion/utils/colors.dart';

class LocationsHome extends StatelessWidget {
  const LocationsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            weight: 10,
            CupertinoIcons.map_pin_ellipse,
            size: 20,
            color: ColorsNative.colorWhite,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Choco',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
