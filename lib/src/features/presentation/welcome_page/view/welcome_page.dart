import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../commons_widgets/header_text.dart';

import '../../../../utils/my_colors.dart';
import '../../commons_widgets/rounded_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                ),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: headerText(
                  text: 'DELIVERED FAST FOOD TO YOUR DOOR',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 30,
                ),
                child: const Text(
                  'Set exact location to find the right restaurants near you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                  ),
                ),
              ),
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
                    labelButton: 'Login',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.fbButtonColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: roundedButton(
                    labelButton: 'Connect with facebook',
                    isWithIcon: true,
                    icon: const AssetImage('assets/icons/facebook.png'),
                    // onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.blackColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: roundedButton(
                    labelButton: 'Connect with Apple',
                    isWithIcon: true,
                    icon: const AssetImage('assets/icons/apple.png'),
                    // onPressed: () {},
                  ),
                ),
              ),
              // HERE BUTTON FACEBOOK
            ],
          ),
        ],
      ),
    );
  }
}

/* 
Container(
  margin: const EdgeInsets.only(bottom: 15),
  width: 350,
  height: 45,
  child: ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, 'login');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: MyColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    child: const Text(
      'Login',
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
      ),
    ),
  ),
),
*/