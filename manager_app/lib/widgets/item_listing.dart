import 'package:manager/models/section.dart';
import 'package:flutter/material.dart';
import 'package:manager/widgets/background_video.dart';
import 'package:manager/widgets/main_menu_items.dart';
import 'package:meta/meta.dart';

import 'bar_miner_logo.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    @required this.itemSelectedCallback,
    this.selectedSectionIndex,
    @required this.isInTabletLayout,
  });

  final ValueChanged<int> itemSelectedCallback;
  final int selectedSectionIndex;
  final bool isInTabletLayout;

  @override
  Widget build(BuildContext context) {
    if (!isInTabletLayout)
      return BackgroundVideo(
        child: buildContent(context),
      );
    else
      return buildContent(context);
  }

  Widget buildContent(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      constraints: BoxConstraints.expand(),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: BarMinerLogo(),
          ),
          // TODO: Remove flex -> replace with item.expand
          Flexible(
            flex: 10,
            child: MainMenuItems(
              itemSelectedCallback,
              selectedSectionIndex,
              upperSections,
              0,
            ),
          ),
          Flexible(
            flex: 2,
            // TODO: Pin to bottom of bar
            child: MainMenuItems(
              itemSelectedCallback,
              selectedSectionIndex,
              lowerSections,
              upperSections.length,
            ),
          )
        ],
      ),
    );
  }
}
