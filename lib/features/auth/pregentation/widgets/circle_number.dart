import 'package:flutter/material.dart';
import 'package:social_media_app/constants/text_font_style.dart';

Widget circleNumber(int number, Color color) {
  
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Center(
      child: Text(
        number.toString(),
        style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,
      ),
    ),
  );
}
