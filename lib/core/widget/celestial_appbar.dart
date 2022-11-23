import 'package:flutter/material.dart';
import 'package:mtelogic/core/misc/app_color.dart';

class CelestialAppBar {
  Widget appBarStandardImage(
          Icon iconLeft, Widget image, GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: AppColor.whiteColor,
        title: Center(child: image),
        iconTheme: const IconThemeData(color: AppColor.blackColor),
      );
}
