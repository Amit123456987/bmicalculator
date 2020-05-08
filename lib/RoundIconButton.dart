import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.Action});

  final IconData icon;
  final Function Action;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,),
      elevation: 6.0,
      onPressed: Action,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),  //CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

    );
  }
}