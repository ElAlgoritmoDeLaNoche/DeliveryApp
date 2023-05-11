import 'package:flutter/material.dart';

import '../../../../../utils/my_colors.dart';

class CuisinesFilter extends StatefulWidget {
  const CuisinesFilter({super.key});

  @override
  State<CuisinesFilter> createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  //
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  //
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(
              () {
                setState(() => btnAmerican = !btnAmerican);
              },
              btnAmerican,
              'American',
            ),
            _roundedButtonFilter(
              () {
                setState(() => btnAsia = !btnAsia);
              },
              btnAsia,
              'Asia',
            ),
            _roundedButtonFilter(
              () {
                setState(() => btnSushi = !btnSushi);
              },
              btnSushi,
              'Sushi',
            ),
            _roundedButtonFilter(
              () {
                setState(() => btnPizza = !btnPizza);
              },
              btnPizza,
              'Pizza',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(
              () {
                setState(() => btnDesserts = !btnDesserts);
              },
              btnDesserts,
              'Desserts',
            ),
            _roundedButtonFilter(
              () {
                setState(() => btnFastFood = !btnFastFood);
              },
              btnFastFood,
              'Fast Food',
            ),
            _roundedButtonFilter(
              () {
                setState(() => btnVietnamese = !btnVietnamese);
              },
              btnVietnamese,
              'Vietnamese',
            ),
          ],
        )
      ],
    );
  }
}

Widget _roundedButtonFilter(
    VoidCallback func, bool isActive, String labelText) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      elevation: 0.5,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      side: BorderSide(
        color: isActive ? MyColors.primaryColor : MyColors.greyColor,
      ),
    ),
    child: Text(
      labelText,
      style: TextStyle(
        color: isActive ? MyColors.primaryColor : MyColors.greyColor,
      ),
    ),
  );
}
