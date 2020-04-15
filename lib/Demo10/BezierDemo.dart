import 'package:flutter/material.dart';



// ******** 
class BezierDemo extends StatelessWidget {
  const BezierDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper2(),//BottomClipper()
            child: Container(
              color: Colors.blueAccent,
              height: 300.0,
            ),
          )
        ],
      ),
    );
  }
}


class BottomClipper extends CustomClipper<Path>{
  
  // 重写
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-100);

    var firstControlPoint = Offset(size.width/2.0, size.height);
    var firstEndPoint = Offset(size.width, size.height-100);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height-100);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}


class BottomClipper2 extends CustomClipper<Path>{
  
  // 重写
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-100);

    var firstControlPoint = Offset(size.width/4.0, size.height);
    var firstEndPoint = Offset(size.width/2.0, size.height-50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    
    var secondControlPoint = Offset(size.width/4*3, size.height-150);
    var secindEndPoint = Offset(size.width, size.height-100);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secindEndPoint.dx, secindEndPoint.dy);

    path.lineTo(size.width, size.height-100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}