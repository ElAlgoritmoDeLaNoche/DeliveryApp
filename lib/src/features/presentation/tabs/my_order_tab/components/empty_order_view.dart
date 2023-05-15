import 'package:flutter/material.dart';

import '../../../commons_widgets/Headers/header_text.dart';

import '../../../../../utils/my_colors.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgGreyPage,
      appBar: AppBar(
        elevation: .5,
        leading: const Text(''),
        backgroundColor: MyColors.whiteColor,
        title: headerText(
          text: 'My Order',
          color: MyColors.blackColor,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 216,
              height: 216,
              image: AssetImage(
                'assets/icons/emptyOrder.png',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: headerText(
                text: 'Cart Empty',
                color: MyColors.greyColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: headerText(
                text:
                    'Good food is always cooking! Go ahead, order some yummy items from the menu.',
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
                color: MyColors.greyColor,
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
