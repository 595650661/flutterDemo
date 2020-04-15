import 'package:flutter/material.dart';
import 'dart:ui';


// ******* 类似toast 轻量级提示********
class ToolTipDemo extends StatelessWidget {
  const ToolTipDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toolTip'),
      ),
      body: Center(
        child: Tooltip(
          child: Image.network('http://a4.att.hudong.com/21/09/01200000026352136359091694357.jpg'),
          message: 'tool tip message',
        ),
      ),
    );
  }
}