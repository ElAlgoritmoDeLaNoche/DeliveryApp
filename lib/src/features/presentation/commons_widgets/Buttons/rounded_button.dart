import 'package:flutter/material.dart';

Widget roundedButton({
  BuildContext? context,
  double width = 350,
  double height = 25,
  double radius = 30,
  ImageProvider<Object>? icon,
  bool isWithIcon = false,
  String? labelButton,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 15, bottom: 15),
    width: width,
    height: height,
    child: isWithIcon
        ? _elevatedButtonWithIcon(radius, icon!, labelButton!)
        : _elevatedButtonNotIcon(radius, labelButton!),
  );
}

Widget _elevatedButtonWithIcon(
    double radius, ImageProvider<Object> icon, String labelButton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        width: 25,
        height: 25,
        image: icon,
      ),
      Container(
        margin: const EdgeInsets.only(left: 10),
        child: Text(
          labelButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      )
    ],
  );
}

Widget _elevatedButtonNotIcon(double radius, String labelButton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        labelButton,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      )
    ],
  );
}
