import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpRequestPageDemo extends StatefulWidget {
  HttpRequestPageDemo({Key key}) : super(key: key);

  @override
  _HttpRequestPageDemoState createState() => _HttpRequestPageDemoState();
}

class _HttpRequestPageDemoState extends State<HttpRequestPageDemo> {
  String _news = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Map userInfo = {'username': '张三', 'age': 20};
    // var a = json.encode(userInfo);////把Map类型数据转换成json字符串
    // print(userInfo is Map);
    // print(a is String);

    // String userinfo = '{"username":"zhangsan","age":20}';
    // Map result = json.decode(userinfo);
    // print(result);
  }

  //Get请求
  void _getData() async {
    var httpUrl = 'http://127.0.0.1:3000/news';
    var result = await http.get(httpUrl);
    if (result.statusCode == 200) {
      print(json.decode(result.body)['msg']);
      setState(() {
        this._news = json.decode(result.body)['msg'];
      });
    } else {
      print(result.statusCode);
    }
  }

  //Post请求
  void _postData() async {
    var httpUrl = 'http://127.0.0.1:3000/dologin';
    var result = await http.post(httpUrl, body: {"username": "坤哥", "age": '28'});
    if (result.statusCode == 200) {
      print(json.decode(result.body));
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http请求'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text(this._news),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Get请求数据'),
              onPressed: _getData,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Post提交数据'),
              onPressed: _postData,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Get请求数据、渲染数据演示demo'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpresult');
              },
            )
          ],
        ),
      ),
    );
  }
}
