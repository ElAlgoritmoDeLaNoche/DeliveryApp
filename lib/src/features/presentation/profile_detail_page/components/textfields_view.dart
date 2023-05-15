// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../utils/screen_size.dart';

import '../../../../utils/my_colors.dart';

class TextFieldProfileDetailView extends StatelessWidget {
  const TextFieldProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldUsername(context),
        _createTextFieldEmail(context),
        _createTextFieldPhone(context),
        _createTextFieldDateOfBirth(context),
        _createTextFieldDeliveryAddress(context),
      ],
    );
  }

  Widget _createTextFieldUsername(BuildContext context) {
    return Container(
      width: screenWidth.getScreenWidth(context: context, multiply: .85),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.dividerColor,
          ),
        ),
      ),
      child: ListTile(
        title: TextField(
          decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Widget _createTextFieldEmail(BuildContext context) {
    return Container(
      width: screenWidth.getScreenWidth(context: context, multiply: .85),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.dividerColor,
          ),
        ),
      ),
      child: ListTile(
        title: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Widget _createTextFieldPhone(BuildContext context) {
    return Container(
      width: screenWidth.getScreenWidth(context: context, multiply: .85),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.dividerColor,
          ),
        ),
      ),
      child: ListTile(
        title: TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hintText: 'Phone',
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Widget _createTextFieldDateOfBirth(BuildContext context) {
    return Container(
      width: screenWidth.getScreenWidth(context: context, multiply: .85),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.dividerColor,
          ),
        ),
      ),
      child: ListTile(
        title: TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
              hintText: 'Date of birth',
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Widget _createTextFieldDeliveryAddress(BuildContext context) {
    return Container(
      width: screenWidth.getScreenWidth(context: context, multiply: .85),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.dividerColor,
          ),
        ),
      ),
      child: ListTile(
        title: TextField(
          keyboardType: TextInputType.text,
          maxLines: 3,
          decoration: InputDecoration(
              hintText: 'Delivery Address',
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
