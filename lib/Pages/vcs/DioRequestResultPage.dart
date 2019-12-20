import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioRequestResultPage extends StatefulWidget {
  DioRequestResultPage({Key key}) : super(key: key);

  @override
  _DioRequestResultPageState createState() => _DioRequestResultPageState();
}

class _DioRequestResultPageState extends State<DioRequestResultPage> {
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getListData();
  }

  void _getListData() async {
    var dioUrl =
        'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
    Response response = await Dio().get(dioUrl);
    // print(json.decode(response.data)["result"]);
    setState(() {
      this._list = json.decode(response.data)['result'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Get请求渲染数据demo'),
      ),
      body: this._list.length > 0
          ? ListView(
              children: this._list.map((value) {
                return ListTile(
                  title: Text(value['title']),
                );
              }).toList(),
            )
          : Text('加载中...'),
    );
  }
}
