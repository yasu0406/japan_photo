import 'package:flutter/material.dart';

class ShowCircularProgress extends StatefulWidget {
  ShowCircularProgress({this.isLoading, this.email, this.password});

  final bool isLoading;
  final String email;
  final String password;

  @override
  _ShowCircularProgressState createState() => _ShowCircularProgressState();
}


class _ShowCircularProgressState extends State<ShowCircularProgress> {

  @override
  Widget build(BuildContext context) {
    return _showCircularProgress();
  }

    @override
    Widget _showCircularProgress() {
    if (widget.isLoading && widget.email != null && widget.password != null) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}