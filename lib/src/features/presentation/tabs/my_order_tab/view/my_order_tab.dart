// ignore_for_file: deprecated_colon_for_default_value

import 'package:flutter/material.dart';

import '../components/empty_order_view.dart';
import '../../../commons_widgets/Headers/header_text.dart';

import '../../../../../utils/my_colors.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({super.key});

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  //
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgGreyPage,
      body: emptyOrderState
          ? const EmptyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
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
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            _orders(context),
                            const SizedBox(height: 50),
                            _checkOutResume(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _orders(BuildContext context) {
    return Column(
      children: [
        _cardOrders(context),
      ],
    );
  }

  Widget _cardOrders(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(248, 248, 248, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              _cardOrderTopContent(),
            ],
          ),
          Column(
            children: [
              _items(context),
              _items(context),
              _items(context),
              _items(context),
            ],
          ),
          _moreItemsContent(context)
        ],
      ),
    );
  }

  Widget _cardOrderTopContent() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 7, bottom: 7, right: 20),
            child: headerText(
              text: 'Little Creatures - Club Street',
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: MyColors.greyColor,
                size: 16,
              ),
              headerText(
                text: '87 Botsford Circle Apt',
                color: MyColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 110,
                height: 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    shape: const StadiumBorder(),
                    backgroundColor: MyColors.primaryColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Free Delivery',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _items(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: MyColors.dividerColor)),
      ),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
              text: 'Special Gajananad Bhel',
              color: MyColors.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            headerText(
              text: 'Mixed vegetables, Chicken Egg',
              color: MyColors.greyColor,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ],
        ),
        trailing: headerText(
          text: '\$17.20',
          color: MyColors.greyColor,
          fontWeight: FontWeight.w300,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _moreItemsContent(BuildContext context) {
    return ListTile(
      title: headerText(
        text: 'Add more items',
        color: MyColors.pinkColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  Widget _checkOutResume(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(248, 248, 248, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          _itemsCheckOutResume(
            title: 'Subtotal',
            value: '\$93.40',
            context: context,
          ),
          _itemsCheckOutResume(
            title: 'tax & Fee',
            value: '\$3.00',
            context: context,
          ),
          _itemsCheckOutResume(
            title: 'Delivery',
            value: 'Free',
            context: context,
          ),
          _buttonCheckout(context),
        ],
      ),
    );
  }

  Widget _itemsCheckOutResume(
      {title: String, value: String, context: BuildContext}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: MyColors.dividerColor),
        ),
      ),
      child: ListTile(
        title: headerText(
          text: title,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        trailing: headerText(
          text: value,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buttonCheckout(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: MyColors.primaryColor,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: headerText(
                text: 'Order now',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: MyColors.whiteColor,
              ),
            ),
            Container(
              child: headerText(
                text: '\$96.40',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: MyColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
