import 'package:flutter/material.dart';
import 'Controllers2/EachVC.dart';


// ******  底部tabbar  悬浮button****

class BottomBarWidget2 extends StatefulWidget {
  BottomBarWidget2({Key key}) : super(key: key);

  @override
  _BottomBarWidget2State createState() => _BottomBarWidget2State();
}

class _BottomBarWidget2State extends State<BottomBarWidget2> {

  List<Widget> _eachVC;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _eachVC = List();
    _eachVC..add(EachVC.now('home'))..add(EachVC.now('email'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachVC[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          /* Navigator 导航器
          MaterialPageRoute  路由
          */  
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachVC.now('new page');
          }));
        },
        tooltip: 'jspang',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,/*
          MainAxisSize：在主轴方向占有空间的值，默认是max
          max：根据传入的布局约束条件，最大化主轴方向的可用空间；
          */
          mainAxisAlignment: MainAxisAlignment.spaceAround,/*
          mainAxisAlignment: 主轴方向上的对齐方式，会对child的位置起作用，默认是start
          spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2
          */
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;                  
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}