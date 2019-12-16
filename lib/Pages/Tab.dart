import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Settings.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
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
        floatingActionButton: Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                this._currentIndex = 1;
              });
            },
            backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            iconSize: 36.0, //icon的大小
            fixedColor: Colors.red, //选中的颜色
            type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
            onTap: (int index) {
              setState(() {
                this._currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text('分类')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('设置'))
            ]),
        drawer: CustomDrawer(),
        endDrawer: SystemUserAccountDrawer()
    );
  }
}


class CustomDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: DrawerHeader(
                          child: Text("自定義Drawer"),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.itying.com/images/flutter/2.png"),
                                fit: BoxFit.cover,
                              ))))
                ],
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text("我的空间"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.people)),
                title: Text("用户中心"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text("设置中心"),
              ),
              Divider(),
            ],
          ),
        );
  }
}

class SystemUserAccountDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: UserAccountsDrawerHeader(
                          accountName: Text("系統UserAccountDrawer"),
                          accountEmail: Text('jikun711@163.com'),
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage('https://www.itying.com/images/flutter/4.png'),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.itying.com/images/flutter/2.png"),
                                fit: BoxFit.cover,
                              )
                          ),
                          otherAccountsPictures: <Widget>[
                            Image.network('https://www.itying.com/images/flutter/3.png'),
                            Image.network('https://www.itying.com/images/flutter/6.png')
                          ],
                      )
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text("我的空间"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.people)),
                title: Text("用户中心"),
                onTap: (){
                  Navigator.of(context).pop();//隐藏侧边栏
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text("设置中心"),
              ),
              Divider(),
            ],
          ),
        );
  }
}