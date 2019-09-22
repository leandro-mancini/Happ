import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFf5f6fb),
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Color(0xFF5acb8a)),
          Icon(Icons.insert_chart, size: 30, color: Color(0xFF5acb8a)),
          Icon(Icons.notifications, size: 30, color: Color(0xFF5acb8a)),
          Icon(Icons.settings, size: 30, color: Color(0xFF5acb8a)),
        ],
        onTap: (index) {
          //print('Foi: ' + index);
          print(index);
        },
      ),
    );
  }
}