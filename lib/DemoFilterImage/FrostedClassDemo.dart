import 'package:flutter/material.dart';
import 'dart:ui';


// ********** 毛玻璃效果 ***********
class FrostedClassDemo extends StatelessWidget {
  const FrostedClassDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(// 约束盒子组件，给children添加额外的约束条件
            constraints: const BoxConstraints.expand(),
            child: Image.network('http://a4.att.hudong.com/21/09/01200000026352136359091694357.jpg'),
          ),
          Center( // ******* tips: 一般超过3-4个嵌套，就应该抽取一个widget组件，这里为了方便学习所以未抽取
            child: ClipRect(// 可裁剪的矩形
              child: BackdropFilter(// 背景过滤器
                filter: ImageFilter.blur(sigmaX:5.0, sigmaY:5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200), // 盒子修饰器
                    child: Center(
                      child: Text(
                        'jspang',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// FrostedClassDemo