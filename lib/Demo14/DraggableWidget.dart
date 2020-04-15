import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  DraggableWidget({Key key, this.offset, this.wigetColor}) : super(key: key);

  final Offset offset;
  final Color wigetColor;

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {

  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    offset = widget.offset;

  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.wigetColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.wigetColor,
        ),
        feedback: Container( // 拖动的时候
          width: 150,
          height: 150,
          color: widget.wigetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offse){ // 拖动结束后
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}

