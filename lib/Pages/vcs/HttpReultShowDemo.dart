import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpResultShowDemo extends StatefulWidget {
  HttpResultShowDemo({Key key}) : super(key: key);

  @override
  _HttpResultShowDemoState createState() => _HttpResultShowDemoState();
}

class _HttpResultShowDemoState extends State<HttpResultShowDemo> {
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getListData();
  }

  void _getListData() async {
    var httpUrl = 'http://a.itying.com/api/productlist';
    var result = await http.get(httpUrl);
    if (result.statusCode == 200) {
      print(json.decode(result.body));
      setState(() {
        this._list = json.decode(result.body)['result'];
      });
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get请求渲染数据演示demo'),
      ),
      body: this._list.length > 0
          ? ListView.builder(
              itemCount: this._list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${this._list[index]['title']}'),
                );
              })
          : Text('加载中...'),
    );
  }
}
