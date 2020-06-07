import 'package:flutter/material.dart';
import 'package:wechat/pages/test_page.dart';
import '../00common/touch_callback.dart';
import '../00common/wechat_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          AppBar(
            brightness: Brightness.light,
          ),
          Scaffold(
            body: ListView(
              padding: const EdgeInsets.only(top: 0),
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 180.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            /// 占位用
                            Expanded(child: Text('')),
                            /// 摄像头
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.camera_alt),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return TestPage('发朋友圈');
                                      }));
                                },
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return TestPage('拍一个动态视频');
                          }));
                        },
                      ),

                      /// 个人头像、昵称，微信号，二维码等信息
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 15.0),
                              child: Image.asset(
                                'images/04profile/icon_head.png',
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '大辉郎',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(0xFF353535),
                                    ),
                                  ),
                                  Text(
                                    '微信号 Llh-Dahuilang',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFFa9a9a9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 12.0, right: 25.0),
                              child: IconButton(
                                icon: Image.asset(
                                  'images/04profile/icon_head_code.png',
                                  width: 16.0,
                                  height: 16.0,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                    return TestPage('二维码界面');
                                  }));
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15.0),
                              child: Image.asset(
                                'images/common_arrow_right.png',
                                width: 8,
                                height: 13,
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return TestPage('个人详情');
                          }));
                        },
                      ),
                    ],
                  ),
                ),
                /// 支付
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  color: Colors.white,
                  child: WechatItem(
                    title: '支付',
                    imagePath: 'images/04profile/icon_me_money.png',
                  ),
                ),
                /// 收藏、相册、表情
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      WechatItem(
                        imagePath: 'images/04profile/icon_me_collect.png',
                        title: '收藏',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          height: 0.5,
                          color: Color(0xFFd9d9d9),
                        ),
                      ),
                      WechatItem(
                        imagePath: 'images/04profile/icon_me_photo.png',
                        title: '相册',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          height: 0.5,
                          color: Color(0xFFd9d9d9),
                        ),
                      ),
                      WechatItem(
                        imagePath: 'images/04profile/icon_me_smile.png',
                        title: '表情',
                      ),
                    ],
                  ),
                ),
                /// 设置
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  color: Colors.white,
                  child: WechatItem(
                    title: '设置',
                    imagePath: 'images/04profile/icon_me_setting.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
