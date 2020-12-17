import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:manager/models/section.dart';

import 'main_menu_items.dart';

class MainMenuItem extends StatelessWidget {
  const MainMenuItem({
    @required this.itemSelectedCallback,
    @required this.index,
    @required this.offset,
    @required this.section,
    @required this.itemColour,
  });

  final ValueChanged<int> itemSelectedCallback;
  final int index;
  final int offset;
  final Section section;
  final Color itemColour;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 0.0),
      onPressed: () => itemSelectedCallback(index + offset),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              section.icon,
              color: itemColour,
            ),
          ),
          Text(
            section.title,
            style: TextStyle(
              color: itemColour,
            ),
          ),
        ]),
      ),
    );
  }
}
