import 'package:flutter/material.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/style.dart';

class NextButton extends StatelessWidget {
  NextButton(
      {@required this.onPressed, @required this.buttonTitle, this.width, this.padding});

  final Function onPressed;
  final String buttonTitle;
  final double width;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return
      TextButton(
        style: getFlatButtonStyle(context),
        onPressed: onPressed,
        child: Text(string_next),
      );

  }
}
