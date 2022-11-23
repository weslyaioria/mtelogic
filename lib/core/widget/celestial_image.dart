import 'package:flutter/material.dart';

Widget celestialImageLocal(String imgUrl, double height, double width,
        [BoxFit boxFit = BoxFit.fill]) =>
    Image(
      image: AssetImage(imgUrl),
      height: height,
      width: width,
      fit: boxFit,
    );
