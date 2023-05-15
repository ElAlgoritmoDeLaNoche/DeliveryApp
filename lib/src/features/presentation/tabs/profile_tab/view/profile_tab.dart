import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../features/presentation/commons_widgets/Headers/header_text.dart';

import '../../../../../utils/my_colors.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    //
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
    ));

    return Scaffold(
      body: Column(
        children: [
          _header(context),
          _contentProfile(),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      height: 250,
      color: MyColors.bgGreyPage,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    headerText(
                      text: 'Cameron Cook',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right,
                        color: MyColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: MyColors.pinkColor,
                  ),
                  child: Row(
                    children: [
                      const Image(
                        width: 16,
                        height: 16,
                        image: AssetImage('assets/icons/crown.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: headerText(
                          text: 'Vip Member',
                          color: MyColors.whiteColor,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _contentProfile() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/noti.png'),
            ),
            title: headerText(
              text: 'Notifications',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/payicon.png'),
            ),
            title: headerText(
              text: 'Payment Methods',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/rewardicon.png'),
            ),
            title: headerText(
              text: 'History',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/promoicon.png'),
            ),
            title: headerText(
              text: 'Promo Code',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/settingicon.png'),
            ),
            title: headerText(
              text: 'Settings',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/inviteicon.png'),
            ),
            title: headerText(
              text: 'Invite Friends',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/helpicon.png'),
            ),
            title: headerText(
              text: 'Help Center',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
          ListTile(
            leading: const Image(
              width: 29,
              height: 29,
              image: AssetImage('assets/icons/abouticon.png'),
            ),
            title: headerText(
              text: 'About us',
              fontWeight: FontWeight.w400,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: MyColors.greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
