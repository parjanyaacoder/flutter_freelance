import 'package:flutter/material.dart';
import 'FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
      ),
      home: FirstPage(),
    );
  }
}

