import 'package:calculator_bmi_one/Bottom_Button.dart';
import 'package:calculator_bmi_one/Constants.dart';
import 'package:flutter/material.dart';
import 'package:calculator_bmi_one/ReusableCard.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {@required this.BmiOutput,
      @required this.Interpretation,
      @required this.Result});
  final String BmiOutput;
  final String Result;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATED WEIGHT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Results', style: kTitletextstyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_card(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(Result, style: kResultTextStyle),
                  Text(
                    BmiOutput,
                    style: kBMITextStyle,
                  ),
                  Text(
                    Interpretation,
                    textAlign: TextAlign.center,
                    style: kResultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              display: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
