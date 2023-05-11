// ignore_for_file: import_of_legacy_library_into_null_safe, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../commons_widgets/header_text.dart';
import '../../../commons_widgets/populars_card.dart';

import '../../../../../../src/utils/my_colors.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _topBar(context),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                          text: 'Discover new places',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      _sliderCards(context),
                      const SizedBox(
                        height: 10,
                      ),
                      _headers(context, 'Popular this week', 'Show All'),
                      popularsCard(
                        context: context,
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                        ),
                        buttonText: 'Free Delivery',
                        hasActionButton: true,
                      ),
                      popularsCard(
                        context: context,
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                        ),
                        buttonText: 'Free Delivery',
                        hasActionButton: true,
                      ),
                      popularsCard(
                        context: context,
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                        ),
                        buttonText: 'Free Delivery',
                        hasActionButton: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _headers(context, 'Collections', 'Show All'),
                      const SizedBox(
                        height: 10,
                      ),
                      _sliderCollections(context)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 320,
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(234, 236, 239, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20,
                color: MyColors.greyColor,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: MyColors.greyColor,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45,
        height: 45,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(209, 209, 214, 1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.filter_list,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'filter');
          },
        ),
      ),
    ],
  );
}

Widget _sliderCards(BuildContext context) {
  return Container(
    height: 350,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _target(context);
      },
    ),
  );
}

Widget _target(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Image(
            width: 210,
            height: 270,
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1681&q=80',
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                "Andy & Cindy's Diner",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              child: Text(
                "87 Botsford Circle Apt",
                style: TextStyle(
                  color: MyColors.disabledColor,
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
                const Text(
                  '4.8 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "(233 ratings)",
                  style: TextStyle(
                    color: MyColors.disabledColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 80,
                  height: 18,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.5,
                      shape: const StadiumBorder(),
                      backgroundColor: MyColors.primaryColor,
                    ),
                    onPressed: () {
                      print('Delivery');
                    },
                    child: const Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(
          text: textHeader,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () {
          print('textAction');
        },
        child: Row(
          children: [
            Text(
              textAction,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections(BuildContext context) {
  return Container(
    height: 180,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _targetCollection(context);
      },
    ),
  );
}

Widget _targetCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1506458539166-34079f9e1d2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=409&q=80',
            ),
          ),
        ),
      ],
    ),
  );
}
