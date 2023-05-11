// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'explore_tab/View/explore_tab.dart';
import 'my_order_tab/view/my_order_tab.dart';
import 'favorite_tab/view/favorite_tab.dart';
import 'profile_tab/view/profile_tab.dart';

import '../commons_widgets/Alerts/alert_dialog.dart';
import '../commons_widgets/Buttons/rounded_button.dart';

import '../../../utils/my_colors.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  //
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _getLocation(context);
    });
  }

  final List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavoriteTab(),
    const ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: MyColors.primaryColor,
      unselectedItemColor: MyColors.greyColor,
      currentIndex: _selectedItemIndex,
      showUnselectedLabels: true,
      onTap: _changeWidget,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'My Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Profile',
        )
      ],
    );
  }
}

Future _getLocation(BuildContext context) async {
  await showAlertDialog(
    context,
    const AssetImage('assets/icons/location.png'),
    'Enabled Your Location',
    'Please allow yo use location to show nerby restaurant on the map',
    GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: roundedButton(
          labelButton: 'Enable Location',
        ),
      ),
    ),
  );
}
