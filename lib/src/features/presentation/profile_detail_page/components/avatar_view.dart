import 'package:flutter/material.dart';

import '../../../../utils/box_decoration_shadow.dart';

import '../../../../utils/my_colors.dart';

@immutable
class AvatarView extends StatelessWidget {
  final String backgroundImage;
  const AvatarView({super.key, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createBoxDecorationWithShadows(
            borderRadius: BorderRadius.circular(65),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: MyColors.pinkColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.camera_alt,
              color: MyColors.whiteColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
