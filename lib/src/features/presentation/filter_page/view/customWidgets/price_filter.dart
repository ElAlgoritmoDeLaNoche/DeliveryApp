// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../../../utils/my_colors.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({super.key});

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  //
  RangeValues _values = const RangeValues(0.3, 1.0);
  int _minPrice = 0;
  int _maxPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '\$$_minPrice',
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        Container(
          width: 300,
          child: RangeSlider(
            activeColor: MyColors.primaryColor,
            inactiveColor: MyColors.greyColor,
            values: _values,
            min: 0,
            max: 1000.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },
          ),
        ),
        Text(
          '\$$_maxPrice',
          style: const TextStyle(
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
