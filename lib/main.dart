import 'package:flutter/material.dart';
import 'package:register/screens/screen1.dart';
import 'package:register/screens/screen2.dart';
import 'package:register/screens/screen3.dart';
import 'package:register/screens/screen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: Screen1.keyword,
      routes: {
        Screen1.keyword: (context) => Screen1(),
        Screen2.keyword: (context) =>Screen2(),
        Screen3.keyword: (context) =>Screen3(),
        Screen4.keyword: (context) =>Screen4(),
      },
    );
  }
}

