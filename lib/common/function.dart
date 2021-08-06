// widget
import 'dart:convert';

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

String dateFormatter(DateTime date) {
  dynamic dayData ='{ "1" : "Senin", "2" : "Selasa", "3" : "Rabu", "4" : "Kamis", "5" : "Jumat", "6" : "Sabtu", "7" : "Minggu" }';
  dynamic monthData = '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "Mei", "6" : "Jun", "7" : "Jul", "8" : "Agu", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Des" }';
  return json.decode(dayData)['${date.weekday}'] +
      ", " +
      date.day.toString() +
      " " +
      json.decode(monthData)['${date.month}'] +
      " " +
      date.year.toString();
}

const double paddingScreen = 20.0;
const double circleWidth = 7.0;
