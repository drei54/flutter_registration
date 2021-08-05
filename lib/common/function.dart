// widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBarDefault(String title) {

  return AppBar(
    title: Text(
        title
    ),
  );
}

Size displaySize(BuildContext context) {
  // debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  // debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  // debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

const double paddingScreen = 20.0;
const double circleWidth = 7.0;