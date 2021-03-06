import 'package:flutter/material.dart';

import 'bar.dart';
import 'info_chartbar.dart';

class ChartBar extends StatelessWidget {
  final list = [
    {"value": "100", "title": "Não Lidos"},
    {"value": "900", "title": "Lidos"},
    {"value": "57", "title": "Informação x"},
    {"value": "21", "title": "Informação y"}
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 330
        ? SizedBox()
        : Container(
            margin: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF030AAC),
                      border: Border.all(
                        color: Color(0xFFE1E1E1),
                      ),
                    ),
                    height: 100,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              "1,000",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ...list
                    .map(
                      (e) => Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Bar(
                                    percentage:
                                        (double.parse(e["value"])) / 1000),
                              ],
                            ),
                            InfoChartBar(info: e),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          );
  }
}
