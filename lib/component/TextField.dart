import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _username = new TextEditingController(); //初始化的时候给表单赋值
  var _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField组件基本使用'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  hintText: '请输入用户', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '多行文本框', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: '密码', border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '请输入用户名称',
              ),
              onChanged: (value) {
                setState(() {
                  this._username.text = value;
                });
              },
            ),
            SizedBox(height: 40),
            Container(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  print(this._username.text);
                  print(this._password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
