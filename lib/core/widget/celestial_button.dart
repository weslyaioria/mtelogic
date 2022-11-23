import 'package:flutter/material.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_icon.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';

Widget celestialElevatedButton(
        Color color,
        Color borderColor,
        Color textColor,
        GestureTapCallback onPressed,
        String text,
        TextStyle textStyle,
        double width,
        double height,
        double widthBorder) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // foregroundColor: textColor, backgroundColor: color, //
          textStyle: textStyle,
          side: BorderSide(
            width: widthBorder,
            color: borderColor,
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(30.0),
          // )
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );

Widget celestialButtonLabel(
  GestureTapCallback onPressed,
  String text,
  TextStyle textStyle,
) =>
    TextButton(
      // onTap: onTap,
      onPressed: onPressed,
      child: celestialLabel(text, textStyle, TextAlign.center),
    );

Widget celestialButtonIcon(GestureTapCallback onPressed, final double size,
        final String svgSrc, final Color color,
        [bool isTint = true]) =>
    GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: size,
        height: size,
        child: celestialIcon(svgSrc, color, isTint),
      ),
    );

Widget celestialRoundIcon(
        IconData icon, GestureTapCancelCallback press, bool showShadow) =>
    Container(
      height: (4 / 91.34) * SizeConfig.screenHeight,
      width: (4 / 91.34) * SizeConfig.screenHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          // foregroundColor: AppColor.blackColor,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
