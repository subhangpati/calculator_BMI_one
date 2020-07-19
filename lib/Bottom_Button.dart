import 'package:flutter/material.dart';
import 'package:calculator_bmi_one/Constants.dart';

class BottomButton extends StatelessWidget {
  final String display;
  final Function onTap;

  BottomButton({@required this.onTap, @required this.display});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(display, style: kLargebuttontextstyle)),
        color: kBottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}
