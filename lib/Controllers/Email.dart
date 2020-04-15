import 'package:flutter/material.dart';
class EmailVC extends StatelessWidget {
  const EmailVC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmailVC'),
      ),
      body: Center(child: Text('EmailVC'),),
    );
  }
}