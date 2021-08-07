
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/complexity.dart';
import 'package:register/widget/complexity_item.dart';
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
  }

  final _passwordController = TextEditingController();
  bool _valid = true;
  String _complexity = "-";
  bool _hasUppercase = false;
  bool _hasDigits = false;
  bool _hasLowercase = false;
  bool _hasSpecialCharacters = false;
  bool _obsecurePass = true;
  // bool _hasMinLength = false;
  int _totalCorrect = 0;
  var _complexities = ["-",string_very_weak, string_weak, string_medium, string_strong];

  validator(String text) {
    String pass = _passwordController.text;
    print(pass);

    _hasUppercase = pass.contains(new RegExp(r'[A-Z]'));
    _hasDigits = pass.contains(new RegExp(r'[0-9]'));
    _hasLowercase = pass.contains(new RegExp(r'[a-z]'));
    _hasSpecialCharacters = pass.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    _totalCorrect = 0;
    countTotal(_hasUppercase);
    countTotal(_hasDigits);
    countTotal(_hasLowercase);
    countTotal(_hasSpecialCharacters);

    setState(() {
      _valid =  _hasDigits & _hasUppercase & _hasLowercase & _hasSpecialCharacters;
      _complexity = _complexities[_totalCorrect];
    });
  }

  countTotal(bool isCorrect){
    _totalCorrect = (isCorrect) ? _totalCorrect + 1: _totalCorrect;
  }

  navigate(){
    validator(_passwordController.text);
    if(_valid) {
      Navigator.pushNamed(context, routes_screen3);
    }
  }

  eyeIconPressed(){
    // Unfocus all focus nodes
    textFieldFocusNode.unfocus();

    // Disable text field's focus node request
    textFieldFocusNode.canRequestFocus = false;
    setState(() {
      _obsecurePass = !_obsecurePass;
    });
    // Do your stuff
    print("Thanks for the solution");

    //Enable the text field's focus node request after some delay
    Future.delayed(Duration(milliseconds: 100), () {
      textFieldFocusNode.canRequestFocus = true;
    });
  }

  final textFieldFocusNode = FocusNode();
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
                  SizedBox(height: 30.0),
                  Text(
                      string_create_pass,
                      style: styleLabel
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child:Text(
                      string_create_pass_desc,
                      style: styleLabelDesc,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextField(
                      controller: _passwordController,
                      obscureText: _obsecurePass,
                      decoration: InputDecoration(
                        hintText: string_create_pass,
                        fillColor: color_white,
                        suffixIcon: GestureDetector(
                            child: IconButton(
                              icon:Icon((_obsecurePass) ? Icons.remove_red_eye:Icons.remove_red_eye_outlined)
                            ),
                            onTap: () => eyeIconPressed(),
                        ),
                        filled: true,
                        enabledBorder: styleOutlineBorder,
                        focusedBorder: styleOutlineBorder,
                        errorText: (!_valid) ? string_error_password: null,
                        errorBorder: (!_valid) ? styleOutlineBorderError : styleOutlineBorder,
                        focusedErrorBorder: (!_valid) ? styleOutlineBorderError : styleOutlineBorder
                      ),
                    onChanged: (text) => validator(text),
                  ),
                  SizedBox(height: 20.0),
                  Complexity(text: _complexity),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComplexityItem(title: string_a_lc, label: string_lettercase,success:_hasLowercase,),
                      ComplexityItem(title: string_a_up, label: string_uppercase,success:_hasUppercase,),
                      ComplexityItem(title: string_123, label: string_number,success:_hasDigits,),
                      ComplexityItem(title: string_9_plus, label: string_character,success:_hasSpecialCharacters,)
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:
                      NextButton(
                        buttonTitle: string_next,
                        onPressed: () => navigate()
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
