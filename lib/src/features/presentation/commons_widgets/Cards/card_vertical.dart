import 'package:flutter/material.dart';

import '../Headers/header_text.dart';

import '../../../../utils/my_colors.dart';

Widget cardVertical({
  BuildContext? context,
  double? width,
  double? height,
  ImageProvider<Object>? image,
  String? title,
  String? subtitle,
}) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: width!,
            height: height!,
            fit: BoxFit.cover,
            image: image!,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: headerText(
                text: title!,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: headerText(
                text: subtitle!,
                color: MyColors.greyColor,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
