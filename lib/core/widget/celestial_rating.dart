import 'package:flutter/material.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/widget/celestial_icon.dart';

class CelestialRating extends StatelessWidget {
  const CelestialRating({
    Key? key,
    required this.rate,
  }) : super(key: key);
  final int? rate;
  @override
  Widget build(BuildContext context) {
    List<int> rates = [1, 2, 3, 4, 5];

    return Row(
      children: [
        for (var i in rates)
          celestialIcon(
            AppIcon.starIcon,
            (rate! >= i) ? AppColor.yellowColor : AppColor.greyColor,
            true,
            10,
          ),
      ],
    );
  }
}
