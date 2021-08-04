import 'package:flutter/cupertino.dart';

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox({this.height, this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return SizedBox(
      height: height,
      width: width != null ? width : double.infinity,
    );
  }
}