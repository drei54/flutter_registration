import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/style.dart';

class ComplexityItem extends StatelessWidget {
  ComplexityItem({this.title, this.label, this.success});

  final String title;
  final String label;
  final bool success;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Visibility(
          visible: (success) ? true : false,
          child:
          Container(
            margin: EdgeInsets.only(top: 0),
            child:CircleAvatar(
            radius: 18,
            backgroundColor: color_green_accent,
            child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.check, color: color_white),
            )
          ),
          )
        )
        ,Visibility(
          visible: (success) ? false : true,
          child: Text(title, style: style_comp_title,),
        ),
        SizedBox(height: (!success) ? 6: 10,),
        Text(label, style: style_comp_desc)
      ],
    );
  }
}