import 'package:flutter/material.dart';
class PagesVC extends StatelessWidget {
  const PagesVC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PagesVC'),
      ),
      body: Center(child: Text('PagesVC'),),
    );
  }
}