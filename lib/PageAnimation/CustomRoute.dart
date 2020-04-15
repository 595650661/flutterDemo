import 'package:flutter/material.dart';

// CustomRoute

class CustomRoute extends PageRouteBuilder {

final Widget widget;

CustomRoute(this.widget)
  :super(
    transitionDuration: Duration(seconds: 1),
    pageBuilder:( // 用来创建所要跳转到的页面
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ){
      return widget;
    },
    transitionsBuilder: ( // 自定义的转场效果
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child
    ){
      // return FadeTransition( // 渐隐渐现的路由动画效果
      //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //     )),
      //     child: child,
      // );

      // return ScaleTransition( // 缩放
      //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn,
      //   )),
      //   child: child,
      // );

      // return RotationTransition( // 旋转 + 缩放
      //   turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn,
      //   )),
      //   child: ScaleTransition( // 缩放
      //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn,
      //     )),
      //     child: child,
      //   ),
      // );

    return SlideTransition(// 左右滑动
      position: Tween<Offset>(
        begin: Offset(-1.0, 0.0),
        end: Offset(0.0, 0.0)
      ).animate(CurvedAnimation(
        parent: animation1,
        curve: Curves.fastOutSlowIn,
      )),
      child: child,
    );

    }
  );

}