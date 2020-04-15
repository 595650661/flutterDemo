import 'package:flutter/material.dart';
import 'BottomBarWidget.dart';
import 'BottomBarWidget2.dart';
import 'FirstPage.dart';
import 'DemoFilterImage/FrostedClassDemo.dart';
import 'Demo5/KeepStateDemo.dart';
import 'Demo6/SearchBarDemo.dart';
import 'Demo7/WarpDemo.dart';
import 'Demo8/ExpansionDemo.dart';
import 'Demo9/ExpansionListDemo.dart';
import 'Demo10/BezierDemo.dart';
import 'Demo11/SplashScreenDemo.dart';
import 'Demo12/RightBackDemo.dart';
import 'Demo13/ToolTipDemo.dart';
import 'Demo14/DraggableDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // demo1
    // return MaterialApp( // 底部tabba
    //   title: 'flutter bottombar',
    //   theme: ThemeData.light(),
    //   home: BottomBarWidget(),
    //   );

    // demo2
    // return MaterialApp( // 底部tabba  类似闲鱼中间的button
    //   title: 'flutter bottombar2',
    //   theme: ThemeData(// 系统主题样本
    //     primarySwatch: Colors.lightBlue
    //   ),
    //   home: BottomBarWidget2(),
    //   );

    // demo3
    //  return MaterialApp( // 自定义跳转 返回
    //   title: 'flutter bottombar3',
    //   theme: ThemeData(// 系统主题样本
    //     primarySwatch: Colors.lightBlue
    //   ),
    //   home: FirstPage(),
    //   );

    // demo4
    // return MaterialApp( // 毛玻璃效果
    //   title: 'filter image',
    //   theme: ThemeData(primarySwatch: Colors.blue),
    //   home: Scaffold(
    //     body: FrostedClassDemo(),
    //   ),
    // );

    // return MaterialApp( // 保持状态
    //   title: 'demo5',
    //   theme: ThemeData(primarySwatch: Colors.lightBlue),
    //   home: KeepStateDemo(),
    // );

    //   return MaterialApp( // 搜索
    //   title: 'demo6',
    //   theme: ThemeData.light(),
    //   home: SearchBarDemo(),
    // );

    // return MaterialApp( // 流水布局
    //   title: 'demo7',
    //   theme: ThemeData.light(),
    //   home: WarpDemo(),
    // );


    // return MaterialApp( // 展开闭合cell
    //   title: 'demo8',
    //   theme: ThemeData.light(),
    //   home: ExpansionDemo(),
    // );

    //  return MaterialApp( // 展开闭合list
    //   title: 'demo9',
    //   theme: ThemeData.light(),
    //   home: ExpansionListDemo(),
    // );

    // return MaterialApp( // 贝塞尔曲线
    //   title: 'demo10',
    //   theme: ThemeData.light(),
    //   debugShowCheckedModeBanner: false, // 去掉右上角DEBUG 标识
    //   home: BezierDemo(),
    // );

    //    return MaterialApp( // 闪屏
    //   title: 'demo11',
    //   theme: ThemeData.light(),
    //   debugShowCheckedModeBanner: false, // 去掉右上角DEBUG 标识
    //   home: SplashScreenDemo(),
    // );

    // return MaterialApp( // 右滑返回
    //   title: 'demo12',
    //   theme: ThemeData.light(),
    //   debugShowCheckedModeBanner: false, // 去掉右上角DEBUG 标识
    //   home: RightBackDemo(),
    // );

    // return MaterialApp( // tooltip 类似toast  轻量级提示
    //   title: 'demo13',
    //   theme: ThemeData.light(),
    //   debugShowCheckedModeBanner: false, // 去掉右上角DEBUG 标识
    //   home: ToolTipDemo(),
    // );

     return MaterialApp( // Draggable 拖拽widget
      title: 'demo14',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false, // 去掉右上角DEBUG 标识
      home: DraggableDemo(),
    );
  }
}