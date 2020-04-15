
import 'package:flutter/material.dart';
import 'package:helloflutter/Demo5/KeepState.dart';

// ********  保持页面状态 *********
class KeepStateDemo extends StatefulWidget {
  KeepStateDemo({Key key}) : super(key: key);

  @override
  _KeepStateDemoState createState() => _KeepStateDemoState();
}

// with 类似多重继承
class _KeepStateDemoState extends State<KeepStateDemo> with SingleTickerProviderStateMixin { 
  
  TabController _controller;

  // 重写初始化方法
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TabController(length: 3, vsync: this);

  }

  // 重写销毁方法
  @override
  void dispose() {
    // TODO: implement dispose

    _controller.dispose();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keep state demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_boat)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        // children: <Widget>[
        //   Text('111'),
        //   Text('222'),
        //   Text('333'),
        // ],
          children: <Widget>[
          KeepState(),
          KeepState(),
          KeepState(),
        ],
      ),
    );
  }
}

// KeepStateDemo