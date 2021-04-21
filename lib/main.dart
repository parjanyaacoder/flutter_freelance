import 'package:flutter/material.dart';
import 'FirstScreen/FirstPage.dart';
import 'Second Screen/SecondPage.dart';

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
      home: SecondPage(),
      // To view first page replace SecondPage() with FirstPage()
    );
  }
}

