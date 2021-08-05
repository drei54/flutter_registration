import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/common/color.dart';
import 'package:register/common/function.dart';
import 'package:register/widget/circle.dart';

class CircleStep extends StatelessWidget {
  CircleStep({this.activeStepNo});

  final int activeStepNo;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: displayWidth(context) / circleWidth,
            width: displayWidth(context),
                // - displayWidth(context) * 0.3,
            child:  Center(
              child:  Container(
                height: 3.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Circle(label:"1",col: (activeStepNo >= 1) ? color_green: color_white),
            Circle(label:"2",col: (activeStepNo >= 2) ? color_green: color_white),
            Circle(label:"3",col: (activeStepNo >= 3) ? color_green: color_white),
            Circle(label:"4",col: (activeStepNo >= 4) ? color_green: color_white),
          ],
        ),
      ],
    );
  }
}