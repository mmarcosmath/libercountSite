import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LiberCount",
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),
          ),
          Divider(
            height: 2,
            thickness: 1,
            color: Color(0xFFD8D8D8),
          ),
        ],
      ),
    );
  }
}
