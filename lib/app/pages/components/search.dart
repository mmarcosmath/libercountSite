import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 360
        ? Icon(Icons.more_vert)
        : Container(
            // margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Color(0xFFBFCCDA),
            ),
            height: 40,
            width: 300,
            child: Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2B80FF),
                ),
                decoration: InputDecoration(
                  hintText: "Digite o codigo",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B80FF),
                  ),
                  alignLabelWithHint: false,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    maxWidth: 20,
                  ),
                  suffixIcon: Image.asset(
                    "images/search.png",
                  ),
                ),
              ),
            ),
          );
  }
}

// Text(
//   "Digite o codigo",
//   style: TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.bold,
//     color: Color(0xFF2B80FF),
//   ),
// ),
// Image.asset(
//   "images/search.png",
//   height: 25,
// )
