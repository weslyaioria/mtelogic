import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/home_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_button.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';

class CategoryListMenuPage extends StatelessWidget {
  CategoryListMenuPage({Key? key}) : super(key: key);
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (8 / 91.34) * SizeConfig.screenHeight,
              width: (8 / 91.34) * SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.netralGreyColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((2.3 / 91.34) * SizeConfig.screenHeight),
                child: celestialButtonIcon(() {
                 
                }, (2.7 / 91.34) * SizeConfig.screenHeight,
                    AppIcon.manShirtIcon, AppColor.blueColor),
              ),
            ),
            SizedBox(
              height: (1 / 91.34) * SizeConfig.screenHeight,
            ),
            SizedBox(
                width: (8 / 91.34) * SizeConfig.screenHeight,
                height: (4 / 91.34) * SizeConfig.screenHeight,
                child: Container(
                  child: celestialLabel("Man Shirt", AppStyle.label10GreyBold,
                      TextAlign.center, 2),
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (8 / 91.34) * SizeConfig.screenHeight,
              width: (8 / 91.34) * SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.borderColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((2.3 / 91.34) * SizeConfig.screenHeight),
                child: celestialButtonIcon(() {
                 
                }, (2.7 / 91.34) * SizeConfig.screenHeight, AppIcon.dressIcon,
                    AppColor.blueColor),
              ),
            ),
            SizedBox(
              height: (1 / 91.34) * SizeConfig.screenHeight,
            ),
            SizedBox(
                width: (8 / 91.34) * SizeConfig.screenHeight,
                height: (4 / 91.34) * SizeConfig.screenHeight,
                child: Container(
                  child: celestialLabel(
                      "Dress", AppStyle.label10GreyBold, TextAlign.center, 2),
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (8 / 91.34) * SizeConfig.screenHeight,
              width: (8 / 91.34) * SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.borderColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((2.3 / 91.34) * SizeConfig.screenHeight),
                child: celestialButtonIcon(() {
                
                }, (2.7 / 91.34) * SizeConfig.screenHeight, AppIcon.manBagIcon,
                    AppColor.blueColor),
              ),
            ),
            SizedBox(
              height: (1 / 91.34) * SizeConfig.screenHeight,
            ),
            SizedBox(
                width: (8 / 91.34) * SizeConfig.screenHeight,
                height: (4 / 91.34) * SizeConfig.screenHeight,
                child: Container(
                  child: celestialLabel("Man Work Equipment",
                      AppStyle.label10GreyBold, TextAlign.center, 2),
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (8 / 91.34) * SizeConfig.screenHeight,
              width: (8 / 91.34) * SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.borderColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((2.3 / 91.34) * SizeConfig.screenHeight),
                child: celestialButtonIcon(() {
           
                }, (2.7 / 91.34) * SizeConfig.screenHeight,
                    AppIcon.womanBagIcon, AppColor.blueColor),
              ),
            ),
            SizedBox(
              height: (1 / 91.34) * SizeConfig.screenHeight,
            ),
            SizedBox(
                width: (8 / 91.34) * SizeConfig.screenHeight,
                height: (4 / 91.34) * SizeConfig.screenHeight,
                child: Container(
                  child: celestialLabel("Woman Bag", AppStyle.label10GreyBold,
                      TextAlign.center, 2),
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (8 / 91.34) * SizeConfig.screenHeight,
              width: (8 / 91.34) * SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.borderColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: Offset(10, 10),
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all((2.3 / 91.34) * SizeConfig.screenHeight),
                child: celestialButtonIcon(() {
                
                }, (2.7 / 91.34) * SizeConfig.screenHeight,
                    AppIcon.manShoesIcon, AppColor.blueColor),
              ),
            ),
            SizedBox(
              height: (1 / 91.34) * SizeConfig.screenHeight,
            ),
            SizedBox(
                width: (8 / 91.34) * SizeConfig.screenHeight,
                height: (4 / 91.34) * SizeConfig.screenHeight,
                child: Container(
                  child: celestialLabel("Man Shoes", AppStyle.label10GreyBold,
                      TextAlign.center, 2),
                ))
          ],
        )
      ],
    );
  }
}
