import 'package:flutter/material.dart';
import 'app.dart';
import 'splash_page.dart';
import './pages/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// 隐藏右上角Debug标志
      debugShowCheckedModeBanner: false,
      title: '微信',
      theme: defaultThemeData,
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => App(),
        "search": (BuildContext context) => SearchPage(),
      },
    );
  }
}

final ThemeData defaultThemeData = ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Color(0xff393a3f),
);

