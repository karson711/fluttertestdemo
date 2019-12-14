import 'package:flutter/material.dart';
import '../Collection2.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),
        centerTitle: true,
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: '热门'),
            Tab(text: '推荐'),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          CollectionDemo(),
          ListView(
            children: <Widget>[
              ListTile(
                  title: Text('第二个Tab')
              ),
              ListTile(
                  title: Text('第二个Tab')
              ),
              ListTile(
                  title: Text('第二个Tab')
              ),
              ListTile(
                  title: Text('第二个Tab')
              ),
              ListTile(
                  title: Text('第二个Tab')
              )
            ],
          )
        ],
      ),
    ));
  }
}