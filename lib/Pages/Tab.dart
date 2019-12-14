import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Settings.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index){
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  List _pageTitleList = [
    Center(
      child: Text('首页'),
    ),
    Center(
      child: Text('分类'),
    ),
    Center(
      child: Text('设置'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: this._pageTitleList[this._currentIndex],
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          iconSize:36.0,      //icon的大小
          fixedColor:Colors.red,  //选中的颜色
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置'))
          ]),
    );
  }
}
