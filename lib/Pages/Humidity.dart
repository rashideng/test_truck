import 'package:flutter/material.dart';

class Humidity extends StatelessWidget {
  final Function onMenuTap;

  const Humidity({Key key, this.onMenuTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
      ),
    );
  }
}
