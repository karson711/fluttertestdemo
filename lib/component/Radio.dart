import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int sex = 1;
  int flag = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio单选按钮组件使用'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男：'),
                Radio(
                  value: 1,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 30),
                Text('女：'),
                Radio(
                  value: 2,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20),
                Text('结果：' + (this.sex == 1 ? '男' : '女'))
              ],
            ),
            SizedBox(height: 30),
            RadioListTile(
              value: 1,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              groupValue: this.flag,
              selected: this.flag==1,
              title: Text('标题1'),
              subtitle: Text('副标题1'),
              secondary: Icon(Icons.help),
            ),
            Divider(),
            RadioListTile(
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              groupValue: this.flag,
              selected: this.flag==2,
              title: Text('标题2'),
              subtitle: Text('副标题2'),
              secondary: Image.network('https://www.itying.com/images/flutter/1.png'),
            )
          ],
        ),
      ),
    );
  }
}
