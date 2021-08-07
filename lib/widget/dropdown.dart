import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';

class Dropdown extends StatelessWidget {
  Dropdown({@required this.dropDownValue, this.label, this.data, @required this.onChanged, this.errorMsg});

  final String dropDownValue;
  final String label;
  final List<String> data;
  final Function onChanged;
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    bool isError = (errorMsg != null && !errorMsg.isEmpty);
    return
      Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: displayWidth(context),
              // height: 50,
              padding:EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: color_white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: (isError) ? color_red : color_white, //                   <--- border color
                  width: 2.0,
                ),
              ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(label, style: styleDropdownLabel,)
                  ),
                  DropdownButton(
                    underline: SizedBox(),
                    hint: dropDownValue == null? Text(string_choose_opt): Text(dropDownValue,style: TextStyle(color: color_black),),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: Colors.blue, backgroundColor: color_white),
                    items: data.map(
                          (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val, style:TextStyle(color: color_black)),
                        );
                      },
                    ).toList(),
                    value: dropDownValue,
                    onChanged: onChanged,
                  ),
                ],
              )
          ),
          Visibility(
            visible: isError,
            child: Container(
              padding: EdgeInsets.only(top: 4, left: 20),
              child: Text(errorMsg, style: styleErrorText)
            )
          ),
          SizedBox(height: (isError) ? 5: 20,)

        ],
      );

  }
}
