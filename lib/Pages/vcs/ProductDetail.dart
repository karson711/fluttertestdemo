import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  String title;

  //普通路由传值方式
  ProductDetailPage({this.title = '商品详情'});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      appBar: AppBar(
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('我是商品数据')),
          ListTile(title: Text('我是商品数据')),
          ListTile(title: Text('我是商品数据')),
          ListTile(title: Text('我是商品数据')),
          ListTile(title: Text('我是商品数据')),
          ListTile(title: Text('我是商品数据'))
        ],
      ),
    );
  }
}
