import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  String textForbutton;
  Color colorForButton;
  Function functionForButton;
  Color colorForBorderButton;
  Color textColor;

  BigButton(
      {this.colorForButton,
      this.functionForButton,
      this.textForbutton,
      this.colorForBorderButton,
      this.textColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: colorForBorderButton),
        ),
        height: 50,
        elevation: 5,
        minWidth: 200,
        child: Text(
          textForbutton,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              color: textColor),
        ),
        color: colorForButton,
        onPressed: functionForButton,
      ),
    );
  }
}
