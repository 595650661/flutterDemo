import 'package:flutter/material.dart';
class HomeVC extends StatelessWidget {
  const HomeVC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeVC'),
      ),
      body: Center(child: Text('HomeVC'),),
    );
  }
}