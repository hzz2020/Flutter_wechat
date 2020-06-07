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
      body: ListView(
        children: <Widget>[
          /// 搜索框
          Container(
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                alignment: Alignment.center,
                height: 30.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text(
                      '搜索',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, 'search');
              },
            ),
          ),
        ],
      ),
    );
  }
}
