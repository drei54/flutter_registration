
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/constant_images.dart';
import 'package:register/common/constant_routes.dart';
import 'package:register/common/constant_string.dart';
import 'package:register/common/function.dart';
import 'package:register/common/style.dart';
import 'package:register/widget/circle_step.dart';
import 'package:register/widget/next_button.dart';

class Ack extends StatefulWidget {
  static var keyword = routes_ack;

  @override
  _Ack createState() => _Ack();
}

class _Ack extends State<Ack> {
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
          image: DecorationImage(
            image: img_background,
            fit: BoxFit.cover,
          ),
          // color: color_background,
        ),
        child:SingleChildScrollView(
            child: Container(
              height: _pageSize - _notifySize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0),
                CircleStep(activeStepNo: 4),
                SizedBox(height: 100.0),
                RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: styleWelcome,
                    children: <TextSpan>[
                      new TextSpan(text: "Thank", style: TextStyle(color: color_black)),
                      new TextSpan(
                          text: "You",
                          style: styleWelcomeBlue
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: displayWidth(context) * 0.65,
                  child:Text(
                    string_ack_desc,
                    style: styleWelcomeDesc,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: NextButton(
                        buttonTitle: string_next,
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          routes_screen1,
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
