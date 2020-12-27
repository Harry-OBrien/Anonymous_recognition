import 'package:flutter/material.dart';

class CustomerLifeCycleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomerLifeCycleScreenState();
}

class _CustomerLifeCycleScreenState extends State<CustomerLifeCycleScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Customer lifecyle",
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
