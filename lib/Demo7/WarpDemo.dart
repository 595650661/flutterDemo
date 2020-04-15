import 'package:flutter/material.dart';



// *******  流式布局 *********

class WarpDemo extends StatefulWidget {
  WarpDemo({Key key}) : super(key: key);

  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {


  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    list = List<Widget>()..add(addButton());
  }

  @override
  Widget build(BuildContext context) {

     final width = MediaQuery.of(context).size.width; // 媒体查询   得到屏幕宽度
     final height = MediaQuery.of(context).size.height; // 媒体查询   得到屏幕高度

    return Scaffold(
      appBar: AppBar(
        title: Text('wrap流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.5,
          child: Container(
            width: width,
            height: height*0.5,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }



  Widget addButton(){
    return GestureDetector(
      onTap: (){
        if (list.length < 9) {
          setState(() {
            list.insert(list.length-1, buildPhoto());
          });
        } else {
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }


  Widget buildPhoto(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.yellowAccent,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }

}