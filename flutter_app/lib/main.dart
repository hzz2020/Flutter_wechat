import 'package:flutter/material.dart';

import 'splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '微信',
      theme: defaultThemeData,
      home: SplashPage(),
    );
  }
}

final ThemeData defaultThemeData = ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Color(0xff393a3f),
);

