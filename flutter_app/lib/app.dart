import 'package:flutter/material.dart';
import './01wechat/wechat_page.dart';
import './02contact/contact_page.dart';
import './03found/found_page.dart';
import './04profile/profile_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // pages
  List<Widget> _pages = List();
  List<BottomNavigationBarItem> _items = List();

  int _currentIndex = 0;

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    _items
      ..add(_bottomBarItem('微信', 0,
          imagePathHL: 'images/tabbar/tabbar_mainframeHL.png',
          imagePath: 'images/tabbar/tabbar_mainframe.png',
          width: 25.0,
          height: 23.0))
      ..add(_bottomBarItem('通讯录', 1,
          imagePathHL: 'images/tabbar/tabbar_contactsHL.png',
          imagePath: 'images/tabbar/tabbar_contacts.png',
          width: 27.0,
          height: 23.0))
      ..add(_bottomBarItem('发现', 2,
          imagePathHL: 'images/tabbar/tabbar_discoverHL.png',
          imagePath: 'images/tabbar/tabbar_discover.png',
          width: 23.0,
          height: 23.0))
      ..add(_bottomBarItem('我', 3,
          imagePathHL: 'images/tabbar/tabbar_meHL.png',
          imagePath: 'images/tabbar/tabbar_me.png',
          width: 23.0,
          height: 23.0));

    _pages
      ..add(WechatPage())
      ..add(ContactPage())
      ..add(FoundPage())
      ..add(ProfilePage());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _items,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            print('点击了底部的第${index + 1}个');
            _currentIndex = index;
          });
        },
      ),
      body: PageView(
        controller: _controller,
        children: _pages,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }

  /// bottomBarItem
  _bottomBarItem(String title, int index,
      {String imagePathHL, String imagePath, double width, double height}) {
    return BottomNavigationBarItem(
      icon: Image.asset(imagePath,),
      activeIcon: Image.asset(imagePathHL),
      title: Text(
        title,
        textScaleFactor: 1.0,
        style: TextStyle(
//          color: _currentIndex == index ? Color(0xff46c01b) : Color(0xff999999),
          fontSize: 10,
        ),
      ),
    );
  }
}
