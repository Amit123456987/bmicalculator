import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Add this property over here to make it a mendation
  ReusableCard({@required this.colour, this.cardChild, this.Touch});

  final Widget cardChild;
  final Color colour;
  final Function Touch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: Touch,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ));
  }
}
