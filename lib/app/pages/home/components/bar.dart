import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  final double percentage;

  Bar({this.percentage = 0});

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  double _height = 400;

  void animation() {
    setState(() {
      _height = 400;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // animation();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // padding: EdgeInsets.only(right: 100),
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        color: Color(0xFFE5E9F2),
      ),
      alignment: Alignment.bottomCenter,
      // margin: EdgeInsets.only(
      //   right: MediaQuery.of(context).size.width * 0.1,
      // ),
      // width: 10,
      width: MediaQuery.of(context).size.width * 0.08,
      height: 400,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: widget.percentage,
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
