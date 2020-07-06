import 'package:flutter/material.dart';
import 'package:libercountsite/app/pages/home/components/Date.dart';

import 'components/chartbar.dart';
import 'components/footer.dart';
import 'components/header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width < 250
          ? SizedBox()
          : Container(
              color: Color(0xFFF3F3F3),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Header(),
                    Date(),
                    ChartBar(),
                    Footer(),
                  ],
                ),
              ),
            ),
    );
  }
}
