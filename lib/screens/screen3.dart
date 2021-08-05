
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
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

  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context).settings.arguments;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = MediaQuery.of(context).padding.top + kToolbarHeight;
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation; // Option 2

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
                  SizedBox(height: 10.0),
                  Container(
                    child:Text(
                      string_personal_info_desc,
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
                  SizedBox(height: 10,),
                  Container(
                    width: displayWidth(context),
                    // height: 60,
                    padding:EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    // dropdown below..
                    child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 42,
                        underline: SizedBox(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          string_choose_opt,
                          'One',
                          'Two',
                          'Three',
                          'Four'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(color: Colors.grey),),
                          );
                        }).toList()),
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
