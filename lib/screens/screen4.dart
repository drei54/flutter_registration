
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/custom_size_box.dart';
import 'package:register/widget/next_button.dart';

class Screen4 extends StatefulWidget {
  static var keyword = routes_screen4;

  @override
  _Screen4 createState() => _Screen4();
}

class _Screen4 extends State<Screen4> {
  @override
  void initState() {
    super.initState();
    var param = <String, dynamic>{'status': 'SUCCESS'};
  }

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context).settings.arguments;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = MediaQuery.of(context).padding.top + kToolbarHeight;

    return Scaffold(
        appBar: appBarDefault(string_create_acccount),
        body:
        Container(
          padding: const EdgeInsets.only(left: paddingScreen, right: paddingScreen, bottom: paddingScreen),
          decoration: BoxDecoration(
            color: color_blue,
          ),
          child:SingleChildScrollView(
            child: Container(
              height: _pageSize - (_notifySize + _appBarSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  CircleStep(activeStepNo: 3),
                  SizedBox(height: 60.0),
                  Text(
                      string_create_pass,
                      style: style_label
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: displayWidth(context) * 0.65,
                    child:Text(
                      string_create_pass_desc,
                      style: style_label_desc,
                    ),

                  ),
                  SizedBox(height: 30.0),
                  TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      fillColor: color_white,
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 10.0),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      labelText: string_create_pass,
                      labelStyle: TextStyle(
                        // color: color_background,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:
                      NextButton(
                        buttonTitle: string_next,
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          routes_screen4,
                              (route) => true,
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
