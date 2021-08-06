
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/datetime_btn.dart';
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

  String _selectDate = string_choose_date;
  String _selectTime = string_choose_time;
  var dt ;
  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  void callDatePicker() async {
    dt = await getDate();
    setState(() {
      _selectDate = dateFormatter(dt);
      print(_selectDate);
    });
  }

  Future<TimeOfDay> getTime(){
    return showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }
  void callTimePicker() async {
    var tm = await getTime();
    setState(() {
      _selectTime = tm.format(context);
      print(_selectTime);
    });
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
                  DateTimeBtn(value: _selectDate,label: string_date,onPressed: () => callDatePicker(),),
                  SizedBox(height: 20,),
                  DateTimeBtn(value: _selectTime,label: string_time,onPressed: () => callTimePicker(),),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:
                      NextButton(
                        buttonTitle: string_next,
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          routes_ack,
                              (route) => false,
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
