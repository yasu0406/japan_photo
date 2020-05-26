import 'package:flutter/material.dart';
import '../../service/AuthService.dart';
import '../widget/ShowForm.dart';

class SignUpTab extends StatefulWidget {
  
  final Auth auth = new Auth();

  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {

  bool _showTabs;

  @override
  void initState() {
    _showTabs = false;
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