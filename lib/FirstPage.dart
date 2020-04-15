import 'package:flutter/material.dart';
import 'PageAnimation/CustomRoute.dart';

// ******  VC跳转、返回****
class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('firstpage',style: TextStyle(fontSize: 36.0),),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(child: Icon(
          Icons.navigate_next,
          color: Colors.white, 
          size: 64.0
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('secondpage',style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        elevation: 4.0,
      ),
           body: Center(
        child: MaterialButton(child: Icon(
          Icons.navigate_before,
          color: Colors.white, 
          size: 64.0
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}