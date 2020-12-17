import 'package:flutter/material.dart';

class AcccountScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AcccountScreenState();
}

class _AcccountScreenState extends State<AcccountScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Account",
          style: textTheme.headline5,
        ),
        Text(
          "See your accound stuff here",
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
