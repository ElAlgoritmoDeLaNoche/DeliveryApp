import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

import '../../../../features/presentation/commons_widgets/Headers/header_text.dart';

import '../../../../features/presentation/commons_widgets/BackButtons/back_button.dart';
import '../../commons_widgets/Cards/favorites_card.dart';

class CollectionDetailPage extends StatefulWidget {
  const CollectionDetailPage({super.key});

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: MyColors.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1602253057119-44d745d9b860?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Center(
                    child: headerText(
                      text: 'Asia \n Restaurant',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: headerText(
                          text: '128 places',
                          color: const Color.fromRGBO(51, 58, 77, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Column(
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
