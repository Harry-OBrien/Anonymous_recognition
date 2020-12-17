import 'package:flutter/services.dart';

import 'screens/master_detail_container.dart';
import 'package:flutter/material.dart';

void main() => runApp(ManagerApp());

class ManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xff173555),
        primaryColor: Color(0xff28263f),
        // accentColor: Color(0xff1f437a),
        accentColor: Color(0xfff8c2c1),
        unselectedWidgetColor: Color(0xff909aaf),
      ),
      home: MasterDetailContainer(),
    );
  }
}
