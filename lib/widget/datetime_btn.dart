import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';

class DateTimeBtn extends StatelessWidget {
  DateTimeBtn({this.label, this.value, this.onPressed, this.errorMsg});

  final String label;
  final String value;
  final Function onPressed;
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    bool isError = (errorMsg != null && !errorMsg.isEmpty);
    // TODO: implement build
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: displayWidth(context),
          // height: 50,
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: color_white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
              color: (isError) ? color_red : color_white, //                   <--- border color
              width: 2.0,
              ),
          ),
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
      ),
      Visibility(
          // visible: isError,
          child: Container(
              padding: EdgeInsets.only(top: 4, left: 10),
              child: Text(errorMsg, style: styleErrorText))),
      SizedBox(
        height: (isError) ? 5 : 6,
      )
    ]);
  }
}
