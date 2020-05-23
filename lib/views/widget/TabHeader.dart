import 'package:flutter/material.dart';
import './SignInTab.dart';
import './SignUpTab.dart';

class TabHeader extends StatefulWidget {
  @override
  _TabHeaderState createState() => _TabHeaderState();
}

class _TabHeaderState extends State<TabHeader> {

  final _tab = <Tab> [
    Tab( 
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "SIGN IN"
          ),
        ),
      ),
    ),
    Tab( 
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "SIGN UP"
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(42, 46, 67, 1),
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Color.fromRGBO(120, 132, 158, 1),
            indicatorSize: 
            TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(102, 94, 255, 1),
            ),
            tabs: _tab,
          ),
        ),
        body: TabBarView(
            children: <Widget> [
              SignInTab(),
              SignUpTab()
            ]
        ),
      ),
    );
  }
}