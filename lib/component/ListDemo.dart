import 'package:flutter/material.dart';

class ListDemoPage extends StatefulWidget {
  ListDemoPage({Key key}) : super(key: key);

  @override
  _ListDemoPageState createState() => _ListDemoPageState();
}

class _ListDemoPageState extends State<ListDemoPage> {
  String username = '';
  int sex = 1;
  String info = '';

  List hobby = [
    {'checked': true, 'title': '吃饭'},
    {'checked': false, 'title': '睡觉'},
    {'checked': true, 'title': '敲代码'}
  ];

  List<Widget> _gethobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title']),
          Checkbox(
            value: this.hobby[i]['checked'],
            onChanged: (v) {
              setState(() {
                this.hobby[i]['checked'] = v;
              });
            },
          )
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学生信息登记系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '请输入用户信息'),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            SizedBox(height: 0),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(value: 1, onChanged: _sexChanged, groupValue: this.sex),
                SizedBox(width: 30),
                Text('女'),
                Radio(value: 2, onChanged: _sexChanged, groupValue: this.sex)
              ],
            ),

            //爱好
            SizedBox(height: 40),
            Column(
              children: _gethobby(),
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '描述信息', border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  this.info = value;
                });
              },
            ),

            //提交信息
            SizedBox(height: 40),
            Container(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                child: Text('提交信息'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('性别:'+(this.sex==1?'男':'女'));
                  print('用户名:'+this.username);
                  print(this.hobby);
                  print('爱好:${this.info}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
