import 'package:flutter/material.dart';
import 'package:helloflutter/Demo14/DraggableWidget.dart';

class DraggableDemo extends StatefulWidget {
  DraggableDemo({Key key}) : super(key: key);

  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {


  Color _draggableColor = Colors.grey;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80, 80),
            wigetColor: Colors.greenAccent,
          ),
           DraggableWidget(
            offset: Offset(180, 80),
            wigetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) { // 接收的参数  这里是color
                _draggableColor = color;
              }, builder: (BuildContext context, List candidateData, List rejectedData) {
                return Container(
                  width: 200,
                  height: 200,
                  color: _draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}