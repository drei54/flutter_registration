import 'package:flutter/cupertino.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/style.dart';

class Complexity extends StatelessWidget {
  Complexity({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return RichText(
      text: new TextSpan(
        style: style_label_desc,
        children: <TextSpan>[
          new TextSpan(
              text: string_complexity, style: TextStyle(color: color_white)),
          new TextSpan(
              text: text,
              style: style_label_desc_orange
          ),
        ],
      ),
    );
  }
}