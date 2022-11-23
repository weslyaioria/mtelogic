import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_button.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (2.6 / 91.34) * SizeConfig.screenHeight),
            child: Column(
              children: [
                SizedBox(
                  height: (1.6 / 91.34) * SizeConfig.screenHeight,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        celestialButtonIcon(() {
                          Get.back();
                        }, (2.7 / 91.34) * SizeConfig.screenHeight,
                            AppIcon.backIcon, AppColor.blackColor),
                        SizedBox(
                          width: (2 / 91.34) * SizeConfig.screenHeight,
                        ),
                        celestialLabel(
                            "Filter", AppStyle.label16NetralBlackBold),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: (1.6 / 91.34) * SizeConfig.screenHeight,
                ),
                const Divider(),
                SizedBox(
                  height: (1.6 / 91.34) * SizeConfig.screenHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
