import 'package:flutter/material.dart';
import 'RoundIconButton.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottonInputButton extends StatefulWidget {

  String label ;
  var incAurDEcrease ;

  // ignore: non_constant_identifier_names
  BottonInputButton({@required this.label ,@required this.incAurDEcrease });

  @override
  _BottonInputButtonState createState() => _BottonInputButtonState();
}

class _BottonInputButtonState extends State<BottonInputButton> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.widget.label,
          style: kDefaultInactiveFontStyle,
        ),
        Text(
          this.widget.incAurDEcrease[0].toString(),
          style: kDefaultActiveFontStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              Action: (){
                setState(() {
                  this.widget.incAurDEcrease[0] +=1;
                });
              },
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              Action: (){

                if( this.widget.incAurDEcrease[0] > 0 ) {
                  setState(() {
                    this.widget.incAurDEcrease[0] -= 1;
                  });
                }
              },
            )
          ],
        )
      ],
    );
  }

}

