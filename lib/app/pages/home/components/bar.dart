import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  double percentage;


  Bar({this.percentage = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        color: Color(0xFFE5E9F2),
      ),
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(
        right: 150,
      ),
      height: 400,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: percentage,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            color: Color(0xFF0F5BFF),
          ),
        ),
      ),
    );
  }
}
