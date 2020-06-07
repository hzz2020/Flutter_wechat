import 'package:flutter/material.dart';

import '../00common/wechat_item.dart';

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
      body: ListView(
        children: <Widget>[
          /// 朋友圈
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(
              title: '朋友圈',
              imagePath: 'images/03found/icon_album.png',
            ),
          ),
          /// 视频号
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(
              title: '视频号',
              imagePath: 'images/03found/icon_bottle.png',
            ),
          ),
          /// 扫一扫、摇一摇
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(
                  imagePath: 'images/03found/icon_scan.png',
                  title: '扫一扫',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/03found/icon_shake.png',
                  title: '摇一摇',
                ),
              ],
            ),
          ),
          /// 看一看、搜一搜
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(
                  imagePath: 'images/03found/icon_look.png',
                  title: '看一看',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/03found/icon_search.png',
                  title: '搜一搜',
                ),
              ],
            ),
          ),
          /// 附近的人
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(
              title: '附近的人',
              imagePath: 'images/03found/icon_nearby.png',
            ),
          ),
          /// 购物、游戏
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(
                  imagePath: 'images/03found/icon_browse.png',
                  title: '购物',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/03found/icon_game.png',
                  title: '游戏',
                ),
              ],
            ),
          ),
          /// 小程序
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(
              title: '小程序',
              imagePath: 'images/03found/icon_miniprogram.png',
            ),
          ),
          /// 占位
          Container(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
