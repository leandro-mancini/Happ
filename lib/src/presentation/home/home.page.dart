import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:happ/src/presentation/dashboard/dashboard.page.dart';
import 'package:happ/src/presentation/report/report.page.dart';
import 'package:happ/src/presentation/settings/settings.page.dart';
import 'package:happ/src/presentation/alerts/alerts.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> children = [
   DashboardPage(),
   ReportPage(),
   AlertsPage(),
   SettingsPage()
 ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;

      print(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      bottomNavigationBar: _bottomNavigationBar(),
      body: children[currentIndex]
    );
  }

  Widget _bottomNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Color(0xFFf5f6fb),
      items: <Widget>[
        Icon(Icons.home, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.insert_chart, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.notifications, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.settings, size: 30, color: Color(0xFF5acb8a)),
      ],
      onTap: onTabTapped,
      index: currentIndex
    );
  }

}