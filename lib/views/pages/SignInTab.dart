import 'package:flutter/material.dart';
import '../../service/AuthService.dart';
import '../widget/ShowCircularProgress.dart';
import '../widget/ShowForm.dart';

import '../../main.dart';
class SignInTab extends StatefulWidget {
  
  final Auth auth = new Auth();

  @override
  _SignInTabState createState() => _SignInTabState();
}

class _SignInTabState extends State<SignInTab> {
  bool _showTabs;

  @override
  void initState() {
    _showTabs = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ShowForm(
            showTabs: _showTabs
          )
        ],
      ),
    );
  }
}