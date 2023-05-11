import 'package:flutter/material.dart';

import '../../commons_widgets/BackButtons/back_button.dart';

import '../../../../features/presentation/commons_widgets/Headers/header_text.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key});

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(text: 'Collections', fontSize: 17),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
            width: 175,
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1511910849309-0dffb8785146?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            ),
          ),
        ),
        Container(
          width: 175,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 35, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                text: 'Asia',
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              headerText(
                text: '128 places',
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
        )
      ],
    ),
  );
}
