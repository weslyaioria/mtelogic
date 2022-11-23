import 'package:flutter/material.dart';

Color colorConvert(String color) {
  color = color.replaceAll("#", "");
  if (color.length == 6) {
    color = "0xFF" + color;
  } else if (color.length == 8) {
    color = "0x" + color;
  }
  return Color(int.parse(color));
}
