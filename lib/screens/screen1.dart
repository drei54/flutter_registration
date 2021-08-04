
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/custom_size_box.dart';
import 'package:register/widget/next_button.dart';

class Screen1 extends StatefulWidget {
  static var keyword = routes_screen1;

  @override
  _Screen1 createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    var param = <String, dynamic>{'status': 'SUCCESS'};
  }

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      // appBar: appBarDefault(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomSizedBox(height: 20.0),
              Text(
                "Testing 1",
                style: TextStyle(
                  fontWeight:FontWeight.normal
                ),
              ),
              CustomSizedBox(height: 20.0),
              Text("sdkfdskjfkdsjfksd"),
              CustomSizedBox(height: 20.0),
              Text("sdfdsfds"),
              CustomSizedBox(height: 40.0),
              RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: kMonteseratNormalNoSize,
                  children: <TextSpan>[
                    new TextSpan(text: "sdfdsf"),
                    new TextSpan(
                        text: "sdfdsfdsf",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: color_blue,
                        )),
                    new TextSpan(text: "sdkf sjdfksdj jdshfkjdfhsk hdjshfk hdskjfs "),
                  ],
                ),
              ),
              CustomSizedBox(height: 30.0),
              NextButton(
                buttonTitle: string_next,
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  routes_screen2,
                      (route) => true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
