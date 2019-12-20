import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioRequestDemoPage extends StatefulWidget {
  DioRequestDemoPage({Key key}) : super(key: key);

  @override
  _DioRequestDemoPageState createState() => _DioRequestDemoPageState();
}

class _DioRequestDemoPageState extends State<DioRequestDemoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }

  void _getData() async {
    var dioUrl = 'http://127.0.0.1:3000/news';
    Response response = await Dio().get(dioUrl);
    print(response.data);
  }

  void _postData() async {
    Map jsonData = {"username": "jikun", "age": "27"};

    var dioUrl = 'http://127.0.0.1:3000/dologin';
    Response response = await Dio().post(dioUrl, data: jsonData);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Request请求库'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Dio Get请求数据'),
              onPressed: _getData,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Dio Post提交数据'),
              onPressed: _postData,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Dio Get请求数据、渲染数据演示demo'),
              onPressed: () {
                Navigator.pushNamed(context, '/dioresult');
              },
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
