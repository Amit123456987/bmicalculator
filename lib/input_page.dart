import 'package:bmicalculator/calculate_brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'InputCard.dart';
import 'ReusableCard.dart';
import 'Constants.dart';
import 'BottomInputButton.dart';
import 'ResultPage.dart';
import 'calculate_brain.dart';

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int Height = 180;
  var Weight = [60];
  var AGE = [18];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),

        // Making Cards in App
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    Touch: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: kCardColor,
                    cardChild: InputCard(
                        Icondata: FontAwesomeIcons.mars,
                        fontcolor: (selectedGender == Gender.Male)
                            ? kActfontColor
                            : kInActfontcolor,
                        label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Touch: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour: kCardColor,
                    cardChild: InputCard(
                        Icondata: FontAwesomeIcons.venus,
                        fontcolor: (selectedGender == Gender.Female)
                            ? kActfontColor
                            : kInActfontcolor,
                        label: "FEMALE"),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReusableCard(
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kDefaultInactiveFontStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          "$Height",
                          style: kDefaultActiveFontStyle,
                        ),
                        Text(
                          "cm",
                          style: kDefaultInactiveFontStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xB1EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape: RoundSliderThumbShape(
                          enabledThumbRadius: 30,
                        ),
                      ),
                      child: Slider(
                        onChanged: (double newValue) {
                          setState(() {
                            Height = newValue.round();
                          });
                        },
                        value: Height.toDouble(),
                        min: 6,
                        max: 335,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                    cardChild: BottonInputButton(
                      label: "WEIGHT",
                      incAurDEcrease: Weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                    cardChild: BottonInputButton(
                      label: "AGE",
                      incAurDEcrease: AGE,
                    ),
                  ),
                ),
              ]),
            ),

            GestureDetector(
              onTap: () {

                CalculatorBrain calc = CalculatorBrain(height: Height, weight: Weight[0]);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
              child: Container(
                color: kbottonStripColor,
                child: Center(
                  child: Text(
                    'CALCULATE',
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
