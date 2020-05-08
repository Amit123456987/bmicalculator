import 'package:flutter/material.dart';
import 'package:bmicalculator/input_page.dart';
import 'Constants.dart';

void main() {
  runApp(BMICal());
}

class BMICal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      // Concentrate on copyWith
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}
