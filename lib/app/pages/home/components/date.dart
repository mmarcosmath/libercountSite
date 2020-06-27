import 'package:flutter/material.dart';
import 'export.dart';

class Date extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  color: Color(0xFFBFCCDA),
                ),
                foregroundDecoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 2,
                      color: Color(0xFFCDD6DC),
                    ),
                  ),
                ),
                height: 35,
                width: 35,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xFF2B80FF),
                  size: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 10),
                color: Color(0xFFBFCCDA),
                height: 35,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("25/06/2020"),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFF2B80FF),
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  color: Color(0xFFBFCCDA),
                ),
                foregroundDecoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 2,
                      color: Color(0xFFCDD6DC),
                    ),
                  ),
                ),
                height: 35,
                width: 35,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xFF2B80FF),
                  size: 20,
                ),
              ),
            ],
          ),
          Export(),
        ],
      ),
    );
  }
}