import 'package:finalmobileapp_630710657/sreens/home/AboutPage.dart';
import 'package:finalmobileapp_630710657/sreens/home/BarPage.dart';
import 'package:finalmobileapp_630710657/sreens/home/ReviewPage.dart';
import 'package:finalmobileapp_630710657/sreens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyEntertainmentApp());
}

class MyEntertainmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PSS Entertainment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        AboutPage.routeName: (context) => AboutPage(),
        BarPage.routeName: (context) => BarPage(),
        ReviewPage.routeName: (context) => ReviewPage(),
      },
    );
  }
}