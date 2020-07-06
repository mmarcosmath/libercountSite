import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xFFDBDBDB),
      child: Wrap(
        runAlignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceAround,

        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "© LiberCount 2020",
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Designed by: @mmarcosmath",
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
