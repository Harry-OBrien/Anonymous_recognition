import 'package:manager/models/section.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    @required this.section,
    @required this.isInTabletLayout,
  });

  final Section section;
  final bool isInTabletLayout;

  @override
  Widget build(BuildContext context) {
    final Widget content = section.implementation();

    // Tablet mode
    if (isInTabletLayout) {
      return Center(child: content);
    }

    // Mobile mode
    return Scaffold(
      appBar: AppBar(
        title: Text(section.title),
      ),
      body: Center(child: content),
    );
  }
}
