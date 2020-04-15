
import 'package:flutter/cupertino.dart'; // 这里和以前引入的 库  不同




class RightBackDemo extends StatelessWidget {
  const RightBackDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return RightBackDemo();
                  }
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
