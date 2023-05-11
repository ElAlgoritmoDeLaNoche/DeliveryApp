// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'header_text.dart';

import '../../../../utils/my_colors.dart';

Widget headerDoubleText({
  String? textHeader,
  String? textAction,
}) {
  return Container(
    child: Row(
      children: [
        headerText(text: textHeader!, fontSize: 23),
        const Spacer(),
        headerText(
          text: textAction!,
          color: MyColors.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        )
      ],
    ),
  );
}
