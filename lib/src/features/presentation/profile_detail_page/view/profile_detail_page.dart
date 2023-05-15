import 'package:flutter/material.dart';

import '../../../../utils/box_decoration_shadow.dart';
import '../../commons_widgets/BackButtons/back_button.dart';
import '../../commons_widgets/Headers/header_text.dart';

import '../../../../utils/screen_size.dart';
import '../../../../utils/my_colors.dart';
import '../components/avatar_view.dart';
import '../components/textfields_view.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({super.key});

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgGreyPage,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        elevation: .5,
        title: headerText(text: 'Edit Profile', fontSize: 17),
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 20, right: 15),
              child: headerText(
                text: 'Done',
                color: MyColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(
                    top: screenHeight.getScreenHeight(
                      context: context,
                      multiply: .1,
                    ),
                    left: 15,
                    right: 15,
                  ),
                  width: screenWidth.getScreenWidth(context: context),
                  height: screenHeight.getScreenHeight(
                    context: context,
                    multiply: .65,
                  ),
                  decoration: createBoxDecorationWithShadows(),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -60),
                        child: const AvatarView(
                          backgroundImage:
                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
                        ),
                      ),
                      const TextFieldProfileDetailView()
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
