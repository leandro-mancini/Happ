import 'package:flutter/material.dart';

import 'presentation/login/login.page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guide Investimentos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }
}