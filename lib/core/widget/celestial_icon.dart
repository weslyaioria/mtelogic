import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget celestialIconImage(String imgUrl, double size) => Image(
      image: AssetImage(imgUrl),
      height: size,
      width: size,
      fit: BoxFit.fill,
    );

Widget celestialIcon(String iconUrl, Color iconColor, bool isTint,
        [double size = 24]) =>
    SvgPicture.asset(
      iconUrl,
      color: isTint ? iconColor : null,
      width: size,
      height: size,
    );

Widget celestialIconSax(IconData iconsax, double size, Color tint) => Icon(
      iconsax,
      color: tint,
      size: size,
    );
