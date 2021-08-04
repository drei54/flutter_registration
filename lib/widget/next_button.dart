import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/function.dart';
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
    var paddingValue = (padding == null) ? 20.0: padding;
    return FlatButton(
      color: color_blue,
      textColor: color_white,
      highlightColor: color_black,
      padding: EdgeInsets.only(bottom: paddingValue, top: paddingValue),
      minWidth: width != null ? width : displayWidth(context) * 0.80, //250.0,,
      child: Text(
        buttonTitle,
        style: kMonteseratButtonStyle,
      ),
      onPressed: onPressed,
    );
  }
}
