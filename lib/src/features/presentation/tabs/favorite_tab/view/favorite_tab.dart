import 'package:flutter/material.dart';

import '../../../commons_widgets/Headers/header_text.dart';
import '../../../commons_widgets/Cards/favorites_card.dart';

import '../../../../../utils/my_colors.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgGreyPage,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Text(''),
            backgroundColor: MyColors.whiteColor,
            title: headerText(
              text: 'My Favorites',
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
                      favoritesCard(
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        ),
                        buttonText: 'Free Delivery',
                        hasActionButton: true,
                        isFavorite: true,
                      ),
                      favoritesCard(
                        title: "Andy & Cindy's Diner",
                        subtitle: '87 Botsford Circle Apt',
                        review: '(230 ratings)',
                        rating: '4.5',
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        ),
                        buttonText: 'Free Delivery',
                        hasActionButton: true,
                        isFavorite: false,
                      ),
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
}
