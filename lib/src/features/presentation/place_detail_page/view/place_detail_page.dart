// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../commons_widgets/Headers/header_double.dart';

import '../../../../features/presentation/commons_widgets/BackButtons/back_button.dart';
import '../../../../features/presentation/commons_widgets/Headers/header_text.dart';

import '../../../../utils/my_colors.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: MyColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {},
        label: headerText(
          text: 'Aladir a la cesta \$95.30',
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: MyColors.primaryColor,
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoPlace(),
                      _infoPlaceStats(),
                      _offerBanner(),
                    ],
                  ),
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, MyColors.whiteColor);
            }),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _headers(text: 'Populars'),
                _sliderCards(),
                _headers(text: 'Full Menu'),
                _menuList(context),
                _headers(text: 'Reviews'),
                _reviews(),
                _headers(text: 'Your Ratings'),
                _yourRatings(),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _promoButton() {
    return Container(
      margin: const EdgeInsets.only(top: 121, left: 30, right: 15),
      width: double.infinity,
      height: 25,
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.5,
              shape: const StadiumBorder(),
              backgroundColor: MyColors.primaryColor,
            ),
            onPressed: () {},
            child: const Text(
              'Free delivery',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoPlace() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          margin: const EdgeInsets.symmetric(vertical: 7),
          child: headerText(
            text: 'Bon Lay Hou Huat Fried Prawn Noodle',
            color: MyColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: MyColors.greyColor,
              ),
              headerText(
                text: '03 Jameson Manors Apt. 177',
                color: MyColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoPlaceStats() {
    return Container(
      margin: const EdgeInsets.only(top: 26),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 84,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: MyColors.whiteColor),
          bottom: const BorderSide(color: Color.fromRGBO(255, 237, 214, 1)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: MyColors.whiteColor,
                    size: 19,
                  ),
                  headerText(
                    text: '4.5',
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ],
              ),
              headerText(
                text: '351 Ratings',
                color: MyColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: MyColors.whiteColor),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: MyColors.whiteColor,
                    size: 19,
                  ),
                  headerText(
                    text: '137k',
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ],
              ),
              headerText(
                text: 'Favorites',
                color: MyColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: MyColors.whiteColor),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: MyColors.whiteColor,
                    size: 19,
                  ),
                  headerText(
                    text: '346',
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ],
              ),
              headerText(
                text: 'Photos',
                color: MyColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _offerBanner() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromRGBO(255, 237, 214, 1),
      height: 91,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(
                text: 'New! Try Pickup',
                color: MyColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              headerText(
                text: 'Pickup on your time. You order is \n ready when you are',
                color: MyColors.blackColor,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.5,
              backgroundColor: MyColors.primaryColor,
            ),
            onPressed: () {},
            child: headerText(
              text: 'Order now',
              color: MyColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _headers({text = String}) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: headerDoubleText(textHeader: text, textAction: ''),
    );
  }

  Widget _sliderCards() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cards(context);
          }),
    );
  }

  Widget _cards(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              width: 200,
              height: 130,
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: headerText(
              text: 'Peanut chaat whith dahi',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 2),
            alignment: Alignment.bottomLeft,
            child: headerText(
              text: '\$ 9.5',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: MyColors.greyColor,
            ),
          ),
          Row(
            children: [
              Container(
                // margin: const EdgeInsets.only(top: 10),
                child: headerText(
                  text: 'Sellected',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: MyColors.primaryColor,
                ),
              ),
              Container(
                // margin: const EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    color: MyColors.primaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _menuList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          _menuItem(context, 'Salads', '2'),
          _menuItem(context, 'Chicken', '5'),
          _menuItem(context, 'Soups', '6'),
          _menuItem(context, 'Vegetables', '7'),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, String text, String itemCount) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: MyColors.greyColor),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            title: headerText(
              text: text,
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
            trailing: headerText(
              text: itemCount,
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
          ),
          _sliderCards()
        ],
      ),
    );
  }

  Widget _reviews() {
    return Container(
      height: 135,
      padding: const EdgeInsets.only(left: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cardReviews();
          }),
    );
  }

  Widget _cardReviews() {
    var lorem =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure';
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: 387,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  width: 49,
                  height: 43,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(
                      text: 'Mike Smithson',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    headerText(
                      text: 'Australia - 45 Reviews',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: MyColors.greyColor,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
              text: lorem,
              color: MyColors.greyColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
              text: 'See full review',
              color: MyColors.primaryColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _yourRatings() {
    var lorem =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure';
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '1',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '2',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '3',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: MyColors.orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                          text: '5',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: headerText(
              text: lorem,
              color: MyColors.greyColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: headerText(
              text: '+ Edit your review',
              color: MyColors.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
