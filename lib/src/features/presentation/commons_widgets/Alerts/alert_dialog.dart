// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../header_text.dart';

import '../../../../utils/my_colors.dart';

showAlertDialog(
  BuildContext context,
  ImageProvider<Object> imagePath,
  String headerTitle,
  String headerSubTitle,
  Widget doneButton,
) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        content: Container(
          height: 350,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: headerText(
                    text: headerTitle,
                    color: MyColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: headerText(
                    text: headerSubTitle,
                    color: MyColors.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 15),
                doneButton
              ],
            ),
          ),
        ),
      );
    },
  );
}
