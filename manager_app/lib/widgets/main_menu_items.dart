import 'package:flutter/material.dart';
import 'package:manager/models/section.dart';

import 'main_menu_item.dart';

class MainMenuItems extends StatelessWidget {
  MainMenuItems(
    this.itemSelectedCallback,
    this.selectedSectionIndex,
    this.sections,
    this.offset,
  );

  final int selectedSectionIndex;
  final int offset;
  final List<Section> sections;
  final ValueChanged<int> itemSelectedCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sections.length,
      itemBuilder: (BuildContext context, int index) {
        Section section = sections[index];
        Color itemColour = (selectedSectionIndex == index + offset
            ? Theme.of(context).accentColor
            : Colors.white);

        return MainMenuItem(
          itemSelectedCallback: itemSelectedCallback,
          index: index,
          offset: offset,
          section: section,
          itemColour: itemColour,
        );
      },
    );
  }
}
