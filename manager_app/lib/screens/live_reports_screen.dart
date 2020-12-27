import 'package:flutter/material.dart';

class LiveReportsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiveReportsScreenState();
}

class _LiveReportsScreenState extends State<LiveReportsScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Live reports",
          style: textTheme.headline5,
        ),
        Text(
          "They'll be displayed here!",
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
