import 'package:flutter/material.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/size_config.dart';

class AppStyle {
  static final TextStyle label10BlueBold = TextStyle(
      color: AppColor.blueColor,
      fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);
  static final TextStyle label10WhiteBold = TextStyle(
      color: AppColor.whiteColor,
      fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);
  static final TextStyle labelTimer = TextStyle(
      fontSize: (1.6 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.bold);

  static final TextStyle labelunselected = TextStyle(
      color: AppColor.blackColor,
      fontSize: (1.3 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label10GreyBold = TextStyle(
      color: AppColor.greyColor,
      fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label10PriceStrike = TextStyle(
    color: AppColor.greyColor,
    fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.combine(
        [TextDecoration.underline, TextDecoration.lineThrough]),
  );

  static final TextStyle label10NetralBlack = TextStyle(
    color: AppColor.netralBlackColor,
    fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
  );

  static final TextStyle label10RedBold = TextStyle(
      color: AppColor.redColor,
      fontSize: (1.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label12NetralBlackBold = TextStyle(
      color: AppColor.netralBlackColor,
      fontSize: (1.2 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label12White = TextStyle(
    color: AppColor.whiteColor,
    fontSize: (1.2 / 91.34) * SizeConfig.screenHeight,
  );

  static final TextStyle label12BLueBold = TextStyle(
      color: AppColor.blueColor,
      fontSize: (1.2 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label12Grey = TextStyle(
    color: AppColor.greyColor,
    fontSize: (1.2 / 91.34) * SizeConfig.screenHeight,
  );

  static final TextStyle label14white = TextStyle(
    color: AppColor.whiteColor,
    fontSize: (1.4 / 91.34) * SizeConfig.screenHeight,
  );
  static final TextStyle label14greyBold = TextStyle(
      color: AppColor.greyColor,
      fontSize: (1.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label14WhiteBold = TextStyle(
      color: AppColor.whiteColor,
      fontSize: (1.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label14BlueBold = TextStyle(
      color: AppColor.blueColor,
      fontSize: (1.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label14NetralBlackBold = TextStyle(
      color: AppColor.netralBlackColor,
      fontSize: (1.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label16BlackBold = TextStyle(
      color: AppColor.blackColor,
      fontSize: (1.6 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label16NetralBlackBold = TextStyle(
      color: AppColor.netralBlackColor,
      fontSize: (1.6 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label20NetralBlackBold = TextStyle(
      color: AppColor.netralBlackColor,
      fontSize: (2.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label20BlueBold = TextStyle(
      color: AppColor.blueColor,
      fontSize: (2.0 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label24WhiteBold = TextStyle(
      color: AppColor.whiteColor,
      fontSize: (2.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);

  static final TextStyle label24BlackBold = TextStyle(
      color: AppColor.blackColor,
      fontSize: (2.4 / 91.34) * SizeConfig.screenHeight,
      fontWeight: FontWeight.w700);
}
