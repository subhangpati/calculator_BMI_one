import 'package:flutter/material.dart';
import 'Constants.dart';

// ignore: camel_case_types
class Icon_data extends StatelessWidget {
  Icon_data({@required this.icon, @required this.label});
  final String label; // male or female
  final IconData icon; // pass mars for male and venus for female

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            label,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
