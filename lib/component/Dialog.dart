import 'dart:async';

import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import '../component/JKDialog.dart';

class DialogDemo extends StatefulWidget {
  DialogDemo({Key key}) : super(key: key);

  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息！'),
            content: Text('您确定要删除吗?'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  print('取消');
                  Navigator.pop(context, 'cancel');
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  print('确定');
                  Navigator.pop(context, 'ok');
                },
              )
            ],
          );
        });
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(
        context: context,
        barrierDismissible: false, //表示点击灰色背景的时候是否消失弹出框
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: () {
                  print('Option A');
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: () {
                  print('Option B');
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  print('Option C');
                  Navigator.pop(context, 'C');
                },
              )
            ],
          );
        });
    print(result);
  }

  void _showModalBottmSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 220,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  void _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _customDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return JKDialog(title: '关于我们', content: '关于我们这款产品');
        });
    print(result);
  }

  void _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('关闭');
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    //开启定时器
    _showTimer(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Dialog  AlertDialog 、SimpleDialog、showModalBottomSheet、showToast'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('alert弹出框-AlertDialog'),
                onPressed: _alertDialog,
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('select弹出框-SimpleDialog'),
                onPressed: _simpleDialog,
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('ActionSheet底部弹出框-showModalBottomSheet'),
                onPressed: _showModalBottmSheet,
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('toast-fluttertoast第三方库'),
                onPressed: _showToast,
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('自定义Dialog'),
                onPressed: _customDialog,
              )
            ],
          ),
        ),
      ),
    );
  }
}
