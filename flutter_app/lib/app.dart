import 'package:flutter/material.dart';
import './pages/test_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  var currentIndex = 0;
  var currentPage;
  /// 底部对应的页面
  final List tabBodies = [
    TestPage('微信'),
    TestPage('通讯录'),
    TestPage('发现'),
    TestPage('我'),
  ];


  @override
  void initState() {
    super.initState();
    currentPage = tabBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(
              'images/tabbar/tabbar_mainframeHL.png',
              width: 25,
              height: 23,
            )
                : Image.asset(
              'images/tabbar/tabbar_mainframe.png',
              width: 25,
              height: 23,
            ),
            title: Text(
              '微信',
              style: TextStyle(
                color:
                currentIndex == 0 ? Color(0xff46c01b) : Color(0xff999999),
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(
              'images/tabbar/tabbar_contactsHL.png',
              width: 27,
              height: 23,
            )
                : Image.asset(
              'images/tabbar/tabbar_contacts.png',
              width: 27,
              height: 23,
            ),
            title: Text(
              '通讯录',
              style: TextStyle(
                color:
                currentIndex == 1 ? Color(0xff46c01b) : Color(0xff999999),
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Image.asset(
              'images/tabbar/tabbar_discoverHL.png',
              width: 23,
              height: 23,
            )
                : Image.asset(
              'images/tabbar/tabbar_discover.png',
              width: 23,
              height: 23,
            ),
            title: Text(
              '发现',
              style: TextStyle(
                color:
                currentIndex == 2 ? Color(0xff46c01b) : Color(0xff999999),
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? Image.asset(
              'images/tabbar/tabbar_meHL.png',
              width: 23,
              height: 23,
            )
                : Image.asset(
              'images/tabbar/tabbar_me.png',
              width: 23,
              height: 23,
            ),
            title: Text(
              '我',
              style: TextStyle(
                color:
                currentIndex == 3 ? Color(0xff46c01b) : Color(0xff999999),
                fontSize: 12,
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            print('点击了底部的第${index + 1}个');
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
