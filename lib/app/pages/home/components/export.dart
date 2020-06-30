import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Export extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Color(0xFFBFCCDA),
      ),
      height: 35,
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Exportar"),
          Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF2B80FF),
            size: 20,
          )
        ],
      ),
    );
  }
}
