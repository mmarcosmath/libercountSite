import 'package:flutter/material.dart';
import 'package:libercountsite/app/pages/components/listbook.dart';
import 'components/menu.dart';
import '../components/footer.dart';
import '../components/header.dart';

class TotalPage extends StatefulWidget {
  @override
  _TotalPageState createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
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
                    Menu(),
                    ListBook(),
                    Footer(),
                  ],
                ),
              ),
            ),
    );
  }
}
