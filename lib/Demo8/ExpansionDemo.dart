import 'package:flutter/material.dart';



// ******   展开闭合 expansionTile ******* 
class ExpansionDemo extends StatelessWidget {
  const ExpansionDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('展开闭合 expansionTile'),
      ),
      body: ExpansionTile(
        title: Text('expansionTile title'),
        leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.redAccent,
        children: <Widget>[
          ListTile(
            title: Text('list title'),
            subtitle: Text('sub title'),
          )
        ],
        initiallyExpanded: false,  // 设置打开关闭
      ),
    );
  }
}
