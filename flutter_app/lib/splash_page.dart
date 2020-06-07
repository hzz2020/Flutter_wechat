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
      child: Image.asset('images/splash.png', fit: BoxFit.cover,),
    );
  }
}
