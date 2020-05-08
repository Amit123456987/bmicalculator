import 'package:bmicalculator/Constants.dart';
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({this.Icondata, @required this.fontcolor, this.label});

  final IconData Icondata;
  final Color fontcolor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icondata,
          size: 80,
          color: fontcolor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: fontcolor,
          ),
        ),
      ],
    );
  }
}
