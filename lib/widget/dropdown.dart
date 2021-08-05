import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';

class Dropdown extends StatelessWidget {
  Dropdown({@required this.dropDownValue, this.label, this.data, @required this.onChanged});

  final String dropDownValue;
  final String label;
  final List<String> data;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: displayWidth(context),
          // height: 50,
          padding:EdgeInsets.only(top: 10, left: 10, right: 10),
          decoration: BoxDecoration(
              color: color_white,
              borderRadius: BorderRadius.circular(5)
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text(label, style: style_dropdown_label,)
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
      );

  }
}
