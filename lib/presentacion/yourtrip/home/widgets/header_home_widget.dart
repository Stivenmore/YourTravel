import 'package:flutter/material.dart';
import 'package:yourtravel/presentacion/utils/colors.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hola Leonora',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 19, fontWeight: FontWeight.w700),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColorLight,
            radius: 22,
            child: Icon(
              Icons.notifications,
              color: ColorsNative.colorWhite,
              size: 23,
            ),
          )
        ],
      ),
    );
  }
}
