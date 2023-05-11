// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../commons_widgets/Headers/header_text.dart';

import '../../../../../utils/my_colors.dart';

class ListTileCheck extends StatefulWidget {
  //
  final String? texto;
  final bool? isActive;
  final VoidCallback? func;
  const ListTileCheck({this.texto, this.isActive, this.func});

  @override
  State<ListTileCheck> createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
          context: context,
          texto: widget.texto!,
          isActive: widget.isActive!,
          func: widget.func,
        ),
      ],
    );
  }
}

Widget listTiles({
  BuildContext? context,
  bool? isActive,
  VoidCallback? func,
  String? texto,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: MyColors.bgInputs,
        ),
      ),
    ),
    child: ListTile(
      onTap: func,
      title: headerText(
        text: texto!,
        color: isActive! ? MyColors.primaryColor : MyColors.blackColor,
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? MyColors.primaryColor : MyColors.blackColor,
            )
          : const Text(''),
    ),
  );
}
