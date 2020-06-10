import 'package:flutter/material.dart';
import 'app.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    /// 延时跳转
    Future.delayed(Duration(seconds: 3), _toAppPage);
  }

  _toAppPage() {
    Navigator.pushNamedAndRemoveUntil(context, 'app', (route) => route == null);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/splash.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

/// 闪屏页第二种方式
class SplashType2Page extends StatefulWidget {
  @override
  _SplashType2PageState createState() => _SplashType2PageState();
}

class _SplashType2PageState extends State<SplashType2Page>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Navigator.pushNamedAndRemoveUntil(
              context, 'app', (route) => route == null);
        }
      },
    );

    _controller.forward();
  }

  @override
  void dispose() {
    //先释放动画资源，再调用super
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        'images/splash.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
