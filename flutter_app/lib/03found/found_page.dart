import 'package:flutter/material.dart';

class FoundPage extends StatefulWidget {
  @override
  _FoundPageState createState() => _FoundPageState();
}

class _FoundPageState extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '发现', 
          style: TextStyle(
            color: Color(0xff303030),
            fontSize: 20,
          ),
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xffebebeb),
      ),
      body: Center(
        child: Text('Found'),
      ),
    );
  }
}
