
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';

TextStyle style_welcome = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 30,
  color: color_black
);

TextStyle style_welcome_blue = TextStyle(
    fontWeight:FontWeight.bold,
    fontSize: 30,
    color: color_blue
);
TextStyle style_welcome_desc = TextStyle(
    fontWeight:FontWeight.bold,
    fontSize: 15,
    color: color_black,

);

TextStyle style_label = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 20,
  color: color_white,

);

TextStyle style_label_desc = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 16,
  color: color_white,
);

TextStyle style_label_desc_orange = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 16,
  color: color_orange,
);

TextStyle style_comp_title = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 35,
  color: color_white,
);

TextStyle style_comp_desc = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 13,
  color: color_white,
);


getFlatButtonStyle(BuildContext context)=> TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: color_blue_btn,
  minimumSize: Size(MediaQuery.of(context).size.width-20,50),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )
);

OutlineInputBorder style_outline_border = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.white, width: 10.0),
  borderRadius: BorderRadius.all(Radius.circular(6)),
);