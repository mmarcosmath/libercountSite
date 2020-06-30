import 'package:flutter/material.dart';

class InfoChartBar extends StatelessWidget {
  final Map info;

  InfoChartBar({this.info});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE1E1E1),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.2,
      height: 150,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                "${info["value"]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                "${info["title"]}",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF2B80FF),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
