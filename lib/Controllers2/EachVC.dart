import 'package:flutter/material.dart';


// ******  用stateful动态widget替代 Controllers中的4个stateles静态widget ****

class EachVC extends StatefulWidget {
  EachVC({Key key}) : super(key: key);

  String _title;
  EachVC.now(this._title);//命名构造函数

  @override
  _EachVCState createState() => _EachVCState();
}

class _EachVCState extends State<EachVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text(widget._title),),
      body: Center(child: Text(widget._title),),
    );
  }
}