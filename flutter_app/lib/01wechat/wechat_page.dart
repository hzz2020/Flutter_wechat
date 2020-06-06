import 'package:flutter/material.dart';
import 'dart:async';

class WechatPage extends StatefulWidget {
  @override
  _WechatPageState createState() => _WechatPageState();
}

class _WechatPageState extends State<WechatPage> {


  _popupMenuItem(String title, {String imagePath,IconData icon}){
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
            ? Image.asset(
            imagePath,
            width: 32.0,
            height: 32.0,
          ): SizedBox(
            width: 32.0,
            height: 32.0,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      value: title,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '微信',
          style: TextStyle(
            color: Color(0xff303030),
            fontSize: 20,
          ),
        ),
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Color(0xffebebeb),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                color: Color(0xff303030),
              ),
              onPressed: (){
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0), 
                  items: <PopupMenuEntry> [
                    _popupMenuItem('发起群聊', imagePath: 'images/01wechat/icon_menu_group.png'),
                    _popupMenuItem('添加朋友', imagePath: 'images/01wechat/icon_menu_addfriend.png'),
                    _popupMenuItem('扫一扫', imagePath: 'images/01wechat/icon_menu_scan.png'),
                    _popupMenuItem('收付款', icon: Icons.crop_free),
                  ],
                ).then((title){
                  print('你打印的是['+title.toString()+']');
                });
              }),
          )
        ],
      ),
      body: Center(
        child: Text('wechat'),
      ),
    );
  }
}
