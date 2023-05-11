// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

Widget headerText({
  String text = '',
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.bold,
  double? fontSize,
}) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    ),
  );
}
