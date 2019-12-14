import 'package:flutter/material.dart';
import '../vcs/ProductDetail.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text('基本路由传值'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return ProductDetailPage();
              }));
            }),
        SizedBox(height: 20),
        RaisedButton(
            child: Text('命名路由传值'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/productinfo', arguments: {'pid': 456});
            }),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("跳转到登录页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("跳转到注册页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("跳转AppBarDemo页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/appBarDemo');
          },
        ),
      ],
    );
  }
}
