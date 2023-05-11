// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

import '../../commons_widgets/card_vertical.dart';
import '../../commons_widgets/header_text.dart';
import '../../commons_widgets/header_double.dart';

import '../../../../utils/my_colors.dart';
import '../../commons_widgets/populars_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                          text: 'Search',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      _searchInput(context),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: headerDoubleText(
                            textHeader: 'Recent search',
                            textAction: 'Clear All',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _sliderRecentSearch(context),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      headerDoubleText(
                        textHeader: 'Recommend for you',
                        textAction: '',
                      ),
                      const SizedBox(height: 10),
                      popularsCard(
                        context: context,
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                        ),
                        buttonText: '',
                        hasActionButton: false,
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
                        buttonText: '',
                        hasActionButton: false,
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
                        buttonText: '',
                        hasActionButton: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40,
    margin: const EdgeInsets.only(top: 15),
    padding: const EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 5),
        prefixIcon: Icon(
          Icons.search,
          color: MyColors.greyColor,
        ),
        hintText: 'Search',
        border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _sliderRecentSearch(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    height: 190,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return cardVertical(
          context: context,
          width: 150,
          height: 120,
          title: "Andy & Cindy's Diner",
          subtitle: '87 Botsford Circle Apt',
          image: const NetworkImage(
            'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80',
          ),
        );
      },
    ),
  );
}
