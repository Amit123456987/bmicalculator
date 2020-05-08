import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Constants.dart';
import 'package:bmicalculator/ReusableCard.dart';


class ResultPage extends StatelessWidget {

  ResultPage({@required this.interpretation, @required this.bmiResult , @required this.resultText });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),

      body: Column(
        children: <Widget>[


          Padding(
            padding:
            EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),


          Expanded(
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[

                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle.copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          bmiResult,
                          style: kLargeBMIInt,
                        ),
                      ),

                    ),

                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Normal BMI range:",
                            style: kDefaultInactiveFontStyle.copyWith(letterSpacing: 2),
                          ),

                          Text(
                            "18,5 - 25 kg/m2",
                            style: kResultWhiteFontStyle.copyWith(letterSpacing: 2),
                          ),

                        ],
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left:70,right: 70),
                        alignment: Alignment.center,
                        child: Text(
                          interpretation,
                          style: kResultWhiteFontStyle.copyWith(letterSpacing: 2),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left:60,right: 60,top: 40,bottom: 40),
                        alignment: Alignment.center,
                        color: Colors.purple,
                        child: Text(
                          "SAVE RESULT",
                          style: kResultWhiteFontStyle.copyWith(letterSpacing: 2),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kbottonStripColor,
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 19,
                    letterSpacing: 2,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
