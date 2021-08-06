
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';

TextStyle styleWelcome = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 30,
  color: color_black
);

TextStyle styleWelcomeBlue = TextStyle(
    fontWeight:FontWeight.bold,
    fontSize: 30,
    color: color_blue
);
TextStyle styleWelcomeDesc = TextStyle(
    fontWeight:FontWeight.bold,
    fontSize: 15,
    color: color_black,

);

TextStyle styleDtBtn = TextStyle(
    fontSize: 14,
    color: color_black,
    fontWeight: FontWeight.normal
);

TextStyle styleLabel = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 20,
  color: color_white,

);

TextStyle styleLabelDesc = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 16,
  color: color_white,
);

TextStyle styleLabelDescOrange = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 16,
  color: color_orange,
);

TextStyle styleCompTitle = TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 35,
  color: color_white,
);

TextStyle styleCompDesc = TextStyle(
  fontWeight:FontWeight.normal,
  fontSize: 13,
  color: color_white,
);
TextStyle styleDropdownLabel = TextStyle(
fontSize: 12,
color: Colors.grey
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

getPickerStyle(BuildContext context)=> TextButton.styleFrom(
    primary: Colors.grey,
    backgroundColor: color_white,
    minimumSize: Size(MediaQuery.of(context).size.width-20,50),
    // padding: EdgeInsets.symmetric(horizontal: 16.0),
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    alignment: Alignment.centerLeft
);

OutlineInputBorder styleOutlineBorder = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.white, width: 10.0),
  borderRadius: BorderRadius.all(Radius.circular(6)),
);

OutlineInputBorder styleOutlineBorderError = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.red, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(6)),
);