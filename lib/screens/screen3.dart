
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
  }

  List<String> _gfaOpt = [string_choose_opt, 'One', 'Two', 'Three'];
  List<String> _miOpt = [string_choose_opt, 'Monthly Income 1', 'Monthly Income 2', 'Monthly Income 3'];
  List<String> _meOpt = [string_choose_opt, 'Monthly Expense 1', 'Monthly Expense 2', 'Monthly Expense 3'];

  String _gfaValue = string_choose_opt;
  String _gfaError = '';
  String _miValue = string_choose_opt;
  String _miError = '';
  String _meValue = string_choose_opt;
  String _meError = '';
  bool _valid = false;

  navigate(BuildContext context){
    setState(() {
      _gfaError = (_gfaValue == string_choose_opt) ? string_error_select: '';
      _miError = (_miValue == string_choose_opt) ? string_error_select: '';
      _meError = (_meValue == string_choose_opt) ? string_error_select: '';

      _valid = (_gfaError.isEmpty & _miError.isEmpty & _meError.isEmpty);
    });

    if(_valid) {
      Navigator.pushNamed(context, routes_screen4);
    }
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
                  CircleStep(activeStepNo: 2),
                  SizedBox(height: 20.0),
                  Text(
                      string_personal_info,
                      style: styleLabel
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    child:Text(
                      string_personal_info_desc,
                      style: styleLabelDesc,
                    ),

                  ),
                  SizedBox(height: 30.0),
                  Dropdown(
                    dropDownValue: _gfaValue, label: string_goal_activation, data: _gfaOpt,
                    onChanged: (val) {
                    setState( () {
                      _gfaValue = val;
                      print(_gfaValue);
                      });
                    },
                    errorMsg: _gfaError
                  ),
                  Dropdown(
                    dropDownValue: _miValue, label: string_monthly_income, data: _miOpt,
                    onChanged: (val) {
                      setState( () {
                        _miValue = val;
                        print(_miValue);
                      });
                    },
                    errorMsg: _miError
                  ),
                  Dropdown(
                    dropDownValue: _meValue, label: string_monthly_expense, data: _meOpt,
                    onChanged: (val) {
                      setState( () {
                        _meValue = val;
                        print(_meValue);
                      });
                    },
                    errorMsg: _meError
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:
                      NextButton(
                        buttonTitle: string_next,
                        onPressed: () => navigate(context),
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
