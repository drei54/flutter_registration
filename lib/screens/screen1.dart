
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context).settings.arguments;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;

    return Scaffold(
      // appBar: appBarDefault(),
      body:
      Container(
        padding: const EdgeInsets.only(left: paddingScreen, right: paddingScreen, bottom: paddingScreen),
        decoration: BoxDecoration(
          color: color_background,
        ),
        child:SingleChildScrollView(
            child: Container(
              height: _pageSize - _notifySize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.0),
                CircleStep(activeStepNo: 0),
                SizedBox(height: 60.0),
                Text(
                    string_welcome_to,
                    style: style_welcome
                ),
                SizedBox(height: 10.0),
                RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: style_welcome,
                    children: <TextSpan>[
                      new TextSpan(text: string_gin, style: TextStyle(color: color_black)),
                      new TextSpan(
                          text: string_finans,
                          style: style_welcome_blue
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: displayWidth(context) * 0.65,
                  child:Text(
                    string_welcome_desc,
                    style: style_welcome_desc,
                  ),

                ),
                SizedBox(height: 30.0),
                TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      fillColor: color_background,
                      prefixIcon: Icon(Icons.email_outlined),
                      filled: true,
                      // labelText: string_email,
                      hintText: string_email,
                      contentPadding:const EdgeInsets.all(30),
                      enabledBorder: style_outline_border,
                      focusedBorder:style_outline_border,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: NextButton(
                      buttonTitle: string_next,
                      onPressed: () => Navigator.pushNamed(
                        context,
                        routes_screen2
                      ),
                    ),
                  ),
                ),
              ],
          ),
            ),
        ),
      )

    );
  }
}
