import 'package:flutter/material.dart';


// ********  保持页面状态 *********
class KeepState extends StatefulWidget {
  KeepState({Key key}) : super(key: key);

  @override
  _KeepStateState createState() => _KeepStateState();
}

class _KeepStateState extends State<KeepState> with AutomaticKeepAliveClientMixin{

  int _counter = 0;


  // 重写 wantKeepAlive
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  // 自定义函数方法
  void _incrementCounter(){
    setState(() {
      _counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Text('增加1'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
        },
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}