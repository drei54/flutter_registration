
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/complexity.dart';
import 'package:register/widget/complexity_item.dart';
import 'package:register/widget/custom_size_box.dart';
import 'package:register/widget/next_button.dart';

class Screen2 extends StatefulWidget {
  static var keyword = routes_screen2;

  @override
  _Screen2 createState() => _Screen2();
}

class _Screen2 extends State<Screen2> {
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
                  CircleStep(activeStepNo: 1),
                  SizedBox(height: 60.0),
                  Text(
                      string_create_pass,
                      style: style_label
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child:Text(
                      string_create_pass_desc,
                      style: style_label_desc,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: string_create_pass,
                        fillColor: color_white,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        filled: true,
                        enabledBorder: style_outline_border,
                        focusedBorder: style_outline_border,
                      ),
                  ),
                  SizedBox(height: 20.0),
                  Complexity(text: "-"),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComplexityItem(title: string_a_lc, label: string_lettercase,success:false,),
                      ComplexityItem(title: string_a_up, label: string_uppercase,success:false,),
                      ComplexityItem(title: string_123, label: string_number,success:true,),
                      ComplexityItem(title: string_9_plus, label: string_character,success:true,)
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:
                      NextButton(
                        buttonTitle: string_next,
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          routes_screen3,
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
