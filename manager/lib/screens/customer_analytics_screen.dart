import 'package:flutter/material.dart';

class CustomerAnalyticsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomerAnalyticsScreenState();
}

class _CustomerAnalyticsScreenState extends State<CustomerAnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Customer base statistics",
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
