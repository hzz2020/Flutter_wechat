import 'package:flutter/material.dart';
import 'package:wechat/pages/test_page.dart';
import './touch_callback.dart';

class WechatItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Icon icon;

  WechatItem(
      {Key key,
      @required this.title,
      this.imagePath,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: () {
//        switch (title) {
//          case '朋友圈':
//            Navigator.pushNamed(context, '/friends');
//            break;
//          default:
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return TestPage(title);
              }),
            );
//        }
      },
      child: Container(
        height: 50.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: imagePath != null
                  ? Image.asset(
                      imagePath,
                      width: 32.0,
                      height: 32.0,
                    )
                  : SizedBox(
                      height: 32.0,
                      width: 32.0,
                      child: icon,
                    ),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF353535),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15.0),
              child: Image.asset(
                'images/common_arrow_right.png',
                width: 8,
                height: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
