import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import '../common/Storage.dart';

class StorageDemo extends StatefulWidget {
  StorageDemo({Key key}) : super(key: key);

  @override
  _StorageDemoState createState() => _StorageDemoState();
}

class _StorageDemoState extends State<StorageDemo> {
  String result = '';
  var _inputStr;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storage本地存储'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('${this.result}'),
          SizedBox(height: 10),
          RaisedButton(
            child: Text('获取Stroage保存的数据'),
            onPressed: () async {
              String username = await Storage.getString('username');
              setState(() {
                this.result = username ;
              });
            },
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: '请输入要保存的姓名',
              border: OutlineInputBorder()
            ),
            onChanged: (value){
              setState(() {
                this._inputStr = value;
              });
            },
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text('保存输入的姓名'),
            onPressed: () async {
              await Storage.setString('username', this._inputStr);
            },
          ),
        ],
      ),
    );
  }
}
