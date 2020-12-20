import 'package:manager/models/section.dart';
import '../widgets/item_details.dart';
import '../widgets/item_listing.dart';
import 'package:flutter/material.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kTabletBreakpoint = 600;

  int _selectedItemIndex = 0;

  Widget _buildMobileLayout() {
    return ItemListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ItemDetails(
                // TODO: Refactor to make clearer
                section: (_selectedItemIndex > upperSections.length - 1
                    ? lowerSections[_selectedItemIndex - upperSections.length]
                    : upperSections[_selectedItemIndex]),
                isInTabletLayout: false,
              );
            },
          ),
        );
      },
      isInTabletLayout: true,
    );
  }

  Widget _buildTabletLayout() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Material(
              elevation: 4.0,
              child: ItemListing(
                itemSelectedCallback: (item) {
                  setState(() {
                    _selectedItemIndex = item;
                  });
                },
                selectedSectionIndex: _selectedItemIndex,
                isInTabletLayout: true,
              ),
            ),
          ),
          Flexible(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: ItemDetails(
                // TODO: Refactor to make clearer/less messy
                // Decide if the index is pointing to the upper section or the lower section
                section: (_selectedItemIndex > upperSections.length - 1
                    ? lowerSections[_selectedItemIndex - upperSections.length]
                    : upperSections[_selectedItemIndex]),
                isInTabletLayout: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < kTabletBreakpoint) {
      content = _buildMobileLayout();
    } else {
      content = _buildTabletLayout();
    }

    return Scaffold(
      body: content,
    );
  }
}
