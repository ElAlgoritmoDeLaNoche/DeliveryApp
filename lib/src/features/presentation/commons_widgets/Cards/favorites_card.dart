import 'package:deliveryapp/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/my_colors.dart';

Widget favoritesCard({
  BuildContext? context,
  double marginTop = 0,
  double marginRight = 0,
  double marginBottom = 15,
  double marginLeft = 0,
  ImageProvider<Object>? image,
  String? title,
  String? subtitle,
  String? review,
  String? rating,
  String? buttonText,
  bool? hasActionButton,
  bool? isFavorite = true,
}) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBottom,
      left: marginLeft,
    ),
    child: Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              image: image!,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    const SizedBox(width: 50),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 25,
                        color:
                            isFavorite! ? MyColors.pinkColor : Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: headerText(
                    text: subtitle!,
                    color: MyColors.greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: MyColors.yellowColor,
                      size: 16,
                    ),
                    headerText(
                      text: review!,
                      color: MyColors.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    headerText(
                      text: rating!,
                      color: MyColors.greyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: 110,
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.5,
                          shape: const StadiumBorder(),
                          backgroundColor: MyColors.primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          buttonText!,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
