import 'package:flutter/material.dart';



// *******  展开闭合的list **********
class ExpansionListDemo extends StatefulWidget {
  ExpansionListDemo({Key key}) : super(key: key);

  @override
  _ExpansionListDemoState createState() => _ExpansionListDemoState();
}

class _ExpansionListDemoState extends State<ExpansionListDemo> {

  List<int> mList;
  List<ExpandStateBean> expandStateList;

// 构造方法
  _ExpansionListDemoState(){
    mList = List();
    expandStateList = List();
    for(int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(false, i));
    }
  }

  // 自定义内部使用方法
  _setCurrentIndex(int index, isExpanded){
    setState(() {
      expandStateList.forEach((item){
        if (item.index == index) {
          item.isOpen = !isExpanded;
        } else {
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion list'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context, isExpanded){
                return ListTile(
                  title: Text('这是第$index'),
                );
              },
              body: ListTile(
                title: Text('expansion NO.$index'),
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}


class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.isOpen, this.index);
}