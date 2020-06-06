import 'package:flutter/material.dart';
import 'package:wechat/pages/test_page.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '通讯录',
          style: TextStyle(
            color: Color(0xff303030),
            fontSize: 20,
          ),
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xffebebeb),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.person_add,
                color: Color(0xff303030),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return TestPage('添加朋友');
                  }),
                );
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Text('contact'),
      ),
    );
  }
}
