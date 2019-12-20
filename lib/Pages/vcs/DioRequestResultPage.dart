import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioRequestResultPage extends StatefulWidget {
  DioRequestResultPage({Key key}) : super(key: key);

  @override
  _DioRequestResultPageState createState() => _DioRequestResultPageState();
}

class _DioRequestResultPageState extends State<DioRequestResultPage> {
  List _list = [];
  int _page = 1;
  bool hasMore = true; //判断有没有数据
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getListData();

    //监听滑动
    _scrollController.addListener(() {
      //获取滚动条下拉的距离
      print(_scrollController.position.pixels);
      //获取整个页面的高度
      print(_scrollController.position.maxScrollExtent);
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 40) {
        //开始加载更多
        this._getListData();
      }
    });
  }

  void _getListData() async {
    if (this.hasMore) {
      var dioUrl =
          'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this._page}';
      Response response = await Dio().get(dioUrl);
      var arr = json.decode(response.data)['result'];
      setState(() {
        if (this._page == 1) {
          this._list = arr;
        } else {
          this._list.addAll(arr);
        }
        this._page++;
      });

      //判断是否为最后一页
      if (arr.length < 20) {
        setState(() {
          this.hasMore = false;
        });
      }
    }
  }

  //下拉刷新
  Future<void> _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000), () {
      print('请求数据完成');
      this._page = 1;
      _getListData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Get请求渲染数据demo'),
      ),
      body: this._list.length > 0
          ? RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: this._list.length,
                itemBuilder: (context, index) {
                  //列表渲染到最后一条的时候加一个圈圈
                  if (index == this._list.length - 1) {
                    //拉到底
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('${this._list[index]['title']}', maxLines: 1),
                        ),
                        Divider(),
                        _getMoreWidget()
                      ],
                    );
                  } else {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('${this._list[index]['title']}', maxLines: 1),
                        ),
                        Divider()
                      ],
                    );
                  }
                },
              ),
            )
          : Text('加载中...'),
    );
  }

  //加载中的圈圈
  Widget _getMoreWidget() {
    if (hasMore) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '加载中...',
                style: TextStyle(fontSize: 16.0),
              ),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Text("--我是有底线的--"),
      );
    }
  }
}
