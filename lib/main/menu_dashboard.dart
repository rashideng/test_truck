import 'package:flutter/material.dart';
import 'package:truck/main/dashboard.dart';
import 'package:truck/main/menu.dart';

class MenuDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DashBoard(),
          Menu(),
        ],
      ),
    );
  }
}
