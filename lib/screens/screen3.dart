
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/dropdown.dart';
import 'package:register/widget/next_button.dart';

class Screen3 extends StatefulWidget {
  static var keyword = routes_screen3;

  @override
  _Screen3 createState() => _Screen3();
}

class _Screen3 extends State<Screen3> {
  @override
  void initState() {
    super.initState();
    var param = <String, dynamic>{'status': 'SUCCESS'};
  }

  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context).settings.arguments;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = MediaQuery.of(context).padding.top + kToolbarHeight;

    List<String> gfaOpt = [string_choose_opt, 'One', 'Two', 'Three'];
    String gfaValue = string_choose_opt;

    List<String> miOpt = [string_choose_opt, 'One', 'Two', 'Three'];
    String miValue = string_choose_opt;

    List<String> meOpt = [string_choose_opt, 'One', 'Two', 'Three'];
    String meValue = string_choose_opt;

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
                  CircleStep(activeStepNo: 2),
                  SizedBox(height: 60.0),
                  Text(
                      string_personal_info,
                      style: style_label
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    child:Text(
                      string_personal_info_desc,
                      style: style_label_desc,
                    ),

                  ),
                  SizedBox(height: 30.0),
                  Dropdown(
                    dropDownValue: gfaValue, label: string_goal_activation, data: gfaOpt,
                    onChanged: (val) {
                    setState( () {
                      gfaValue = val;
                      print(gfaValue);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  Dropdown(
                    dropDownValue: miValue, label: string_monthly_income, data: miOpt,
                    onChanged: (val) {
                      setState( () {
                        miValue = val;
                        print(miValue);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  Dropdown(
                    dropDownValue: meValue, label: string_monthly_expense, data: meOpt,
                    onChanged: (val) {
                      setState( () {
                        meValue = val;
                        print(meValue);
                      });
                    },
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
