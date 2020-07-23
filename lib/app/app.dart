import 'package:flutter/material.dart';
import 'package:libercountsite/app/pages/screen_total/total_page.dart';

import 'pages/screen_home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TotalPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFD8D8D8),
      ),
    );
  }
}
