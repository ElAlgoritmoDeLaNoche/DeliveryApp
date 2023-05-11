import 'package:flutter/material.dart';

import 'header_text.dart';

import '../../../utils/my_colors.dart';

Widget popularsCard({
  BuildContext? context,
  double marginTop = 0,
  double marginRight = 0,
  double marginBottom = 0,
  double marginLeft = 10,
  ImageProvider<Object>? image,
  String? title,
  String? subtitle,
  String? review,
  String? rating,
  String? buttonText,
  bool? hasActionButton,
}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
          top: marginTop,
          right: marginRight,
          bottom: marginBottom,
          left: marginLeft,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 130,
                height: 130,
                fit: BoxFit.cover,
                image: image!,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: headerText(
                      text: title!,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      subtitle!,
                      style: TextStyle(
                        color: MyColors.greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: MyColors.yellowColor,
                        size: 16,
                      ),
                      Text(
                        review!,
                        style: TextStyle(
                          color: MyColors.greyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          rating!,
                          style: TextStyle(
                            color: MyColors.greyColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        width: 100,
                        height: 18,
                        child: hasActionButton!
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0.5,
                                  shape: const StadiumBorder(),
                                  backgroundColor: MyColors.primaryColor,
                                ),
                                onPressed: () {
                                  print('Free Delivery');
                                },
                                child: Text(
                                  buttonText!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            : const Text(''),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}
