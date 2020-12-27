import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Admin stuff",
          style: textTheme.headline5,
        ),
        Text(
          "It'll be displayed here!",
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
