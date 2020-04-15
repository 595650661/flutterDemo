import 'package:flutter/material.dart';
import 'Controllers/Airplay.dart';
import 'Controllers/Pages.dart';
import 'Controllers/Home.dart';
import 'Controllers/Email.dart';

// ******  底部tabbar ****
class BottomBarWidget extends StatefulWidget {
  BottomBarWidget({Key key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
// 颜色
final _bottomNavigationColor = Colors.blue;
// 当前index 
int _currentIndex = 0;
// tabbar的子vc数组
List<Widget> list = List();

// 重写 initState
@override
void initState() {
    // TODO: implement initState
    // ..add
    list
      ..add(HomeVC())
      ..add(EmailVC())
      ..add(PagesVC())
      ..add(AirplayVC());

      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'home',
              style: TextStyle(color: _bottomNavigationColor),
            )
            ),
                      BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'email',
              style: TextStyle(color: _bottomNavigationColor),
            )
            ),
                      BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'pages',
              style: TextStyle(color: _bottomNavigationColor),
            )
            ),
                      BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'airplay',
              style: TextStyle(color: _bottomNavigationColor),
            )
            )
        ],
        currentIndex: _currentIndex, // 高亮的index
        onTap: (int index){ // 点击事件
          setState(() { // 设置状态
            _currentIndex = index;
          });
        },
      ),
    );
  }
}