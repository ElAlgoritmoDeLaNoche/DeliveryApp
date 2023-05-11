// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../commons_widgets/back_button.dart';
import '../../commons_widgets/header_text.dart';
import '../../commons_widgets/rounded_button.dart';

import '../../commons_widgets/Alerts/alert_dialog.dart';

import '../../../../utils/my_colors.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(
              context,
              Colors.black,
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              headerText(
                text: 'Forgot you Password?',
                color: MyColors.accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                  ),
                ),
              ),
              _emailInput(),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () => _showAlert(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: roundedButton(
                    // color: MyColors.primaryColor,
                    labelButton: 'Send',
                  ),
                ),
              )
              // _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

void _showAlert(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('assets/icons/lock.png'),
      'Your password has been reset',
      "You'll shoetly recive an email with a code to setup a new password",
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'login');
        },
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: roundedButton(
            labelButton: 'Done',
          ),
        ),
      )
      // roundedButton(context, 'Done'),
      );
}
