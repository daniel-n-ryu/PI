import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PI: Political Involvement',
      theme: ThemeData(
        primaryColor: Color(0xFF335C67),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PI: Political Involvement'),
    );
  }
}

