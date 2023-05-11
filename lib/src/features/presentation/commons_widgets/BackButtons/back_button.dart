import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color color) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back_ios,
      color: color,
      size: 25,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
