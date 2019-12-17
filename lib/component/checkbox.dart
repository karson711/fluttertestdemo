import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox多选框组件使用'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.flag,
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  },
                  activeColor: Colors.red,
                )
              ],
            ),
            SizedBox(height: 40),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title:Text('标题'),
              subtitle: Text('副标题'),
              secondary: Icon(Icons.flip),
              activeColor: Colors.blue,
              selected: this.flag,
            ),
            Divider(),//分隔线
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title:Text('标题二'),
              subtitle: Text('副标题二'),
              secondary: Icon(Icons.flip),
              activeColor: Colors.blue,
              selected: this.flag,
            ),

          ],
        ),
      ),
    );
  }
}
