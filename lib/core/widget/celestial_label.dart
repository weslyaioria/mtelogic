import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget celestialLabel(String text, TextStyle textStyle,
        [TextAlign align = TextAlign.left, int? maxLines = 1]) =>
    AutoSizeText(
      text,
      maxLines: maxLines,
      style: textStyle,
      textAlign: align,
    );

Widget celestialLabelReadmore(String text, String textBold, String textEnd,
        TextStyle textStyle, TextStyle textStyleBold, TextAlign align) =>
    RichText(
      textAlign: align,
      text: TextSpan(
        style: textStyle,
        children: <TextSpan>[
          TextSpan(text: text),
          TextSpan(text: textBold, style: textStyleBold),
          TextSpan(text: textEnd),
        ],
      ),
    );
