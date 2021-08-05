
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/custom_size_box.dart';
import 'package:register/widget/dropdown.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context).settings.arguments;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = MediaQuery.of(context).padding.top + kToolbarHeight;

    List<String> dtOpt = [string_choose_date];
    String dtValue = string_choose_date;

    List<String> tmOpt = [string_choose_time];
    String tmValue = string_choose_time;


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
                      string_schedule_vc,
                      style: style_label
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child:Text(
                      string_schedule_vc_desc,
                      style: style_label_desc,
                    ),

                  ),
                  SizedBox(height: 30.0),
                  Dropdown(
                    dropDownValue: dtValue, label: string_date, data: dtOpt,
                    onChanged: (val) {
                      setState( () {
                        dtValue = val;
                        print(dtValue);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  Dropdown(
                    dropDownValue: tmValue, label: string_time, data: tmOpt,
                    onChanged: (val) {
                      setState( () {
                        tmValue = val;
                        print(tmValue);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
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
