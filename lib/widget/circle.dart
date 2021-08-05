import 'package:flutter/cupertino.dart';
import 'package:register/common/function.dart';

class Circle extends StatelessWidget{
  Circle({this.label, this.col});

  final String label;
  final Color col;

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      width: displayWidth(context) / circleWidth,
      height: displayWidth(context) / circleWidth,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              label,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 3),
        borderRadius: BorderRadius.all(
          Radius.circular(200),
        ),
        color: col,
      ),
    );
  }
}