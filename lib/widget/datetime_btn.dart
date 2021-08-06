import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';

class DateTimeBtn extends StatelessWidget{
  DateTimeBtn({this.label, this.value, this.onPressed});

  final String label;
  final String value;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
        width: displayWidth(context),
        // height: 50,
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: color_white,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  label,
                  style: styleDropdownLabel,
                )),
            TextButton(
              style: getPickerStyle(context),
              onPressed: onPressed,
              child: Text(
                value,
                style: styleDtBtn,
              ),
            ),
          ],
        )
    );
  }
}