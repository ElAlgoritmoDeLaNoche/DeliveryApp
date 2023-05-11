import 'package:flutter/material.dart';

import '../../../../features/presentation/commons_widgets/header_text.dart';

import '../../../../features/presentation/filter_page/view/customWidgets/cuisines_filters.dart';
import '../../../../features/presentation/filter_page/view/customWidgets/list_tile_checked.dart';
import '../../../../features/presentation/filter_page/view/customWidgets/price_filter.dart';

import '../../../../utils/my_colors.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //
  // SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _appBar(context),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15, bottom: 5, left: 15),
                  child: headerText(
                    text: 'CUISINES',
                    color: MyColors.greyColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const CuisinesFilter(),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15, bottom: 5, left: 15),
                  child: headerText(
                    text: 'SORT BY',
                    color: MyColors.greyColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                _sortByContainer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15, bottom: 5, left: 15),
                  child: headerText(
                    text: 'FILTER',
                    color: MyColors.greyColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                _filterContainer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15, bottom: 5, left: 15),
                  child: headerText(
                    text: 'PRICE',
                    color: MyColors.greyColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const PriceFilter()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Top Rated',
            isActive: topRated,
            func: () {
              setState(() => topRated = !topRated);
            },
          ),
          ListTileCheck(
            texto: 'Nearest Me',
            isActive: nearMe,
            func: () {
              setState(() => nearMe = !nearMe);
            },
          ),
          ListTileCheck(
            texto: 'Cost High to Low',
            isActive: costHighToLow,
            func: () {
              setState(() => costHighToLow = !costHighToLow);
            },
          ),
          ListTileCheck(
            texto: 'Cost Low to High',
            isActive: costLowToHigh,
            func: () {
              setState(() => costLowToHigh = !costLowToHigh);
            },
          ),
          ListTileCheck(
            texto: 'Most Popular',
            isActive: mostPopular,
            func: () {
              setState(() => mostPopular = !mostPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Open Now',
            isActive: openNow,
            func: () {
              setState(() => openNow = !openNow);
            },
          ),
          ListTileCheck(
            texto: 'Credit Card',
            isActive: creditCards,
            func: () {
              setState(() => creditCards = !creditCards);
            },
          ),
          ListTileCheck(
            texto: 'Alcohol Served',
            isActive: alcoholServed,
            func: () {
              setState(() => alcoholServed = !alcoholServed);
            },
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: headerText(
        text: 'Filters',
        fontWeight: FontWeight.w600,
      ),
      leading: Container(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: headerText(
          text: 'Reset',
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: headerText(
              text: 'Done',
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: MyColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
