import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Export extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 360
        ? Icon(Icons.more_vert)
        : Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Color(0xFFBFCCDA),
            ),
            height: 40,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exportar",
                  style: TextStyle(fontSize: 20),
                ),
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
