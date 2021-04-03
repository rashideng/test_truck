import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Map> drawerItems = [
    {'icon': Icons.bar_chart_sharp, 'title': 'Dashboard'},
    {'icon': Icons.ac_unit, 'title': 'Humidity'},
    {'icon': Icons.bar_chart_sharp, 'title': 'GPS'}
  ];
  double xOffest = 0;
  double yOffest = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFF4A4A58),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: drawerItems
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          e['icon'],
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          e['title'],
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
