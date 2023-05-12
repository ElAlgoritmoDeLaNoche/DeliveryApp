// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

Widget headerText({
  String text = '',
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.bold,
  double? fontSize,
  TextAlign textAlign = TextAlign.justify,
}) {
  return Container(
    child: Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    ),
  );
}
