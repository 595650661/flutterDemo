
import 'package:flutter/material.dart';
import 'package:helloflutter/Demo11/MyHomePage.dart';
import 'dart:ui';


// ******** 闪屏 ********
class SplashScreenDemo extends StatefulWidget {
  SplashScreenDemo({Key key}) : super(key: key);

  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> with SingleTickerProviderStateMixin{

  AnimationController _controller;

  Animation _animation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3)); 
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status){
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MyHomePage()), 
          (route) => route == null
          );
      } else {
      }
    });

    _controller.forward(); // 播放动画
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'http://a4.att.hudong.com/21/09/01200000026352136359091694357.jpg',
        scale: 2.0,
        fit: BoxFit.cover
        ),
  
    );
  }
}