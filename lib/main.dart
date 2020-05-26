import 'package:flutter/material.dart';

import './views/pages/Root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(42, 46, 67, 1)
      ),
      home: RootPage(),
      );
  }
}


