import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart' as prefix0;

class SystemDateDemo extends StatefulWidget {
  SystemDateDemo({Key key}) : super(key: key);

  @override
  _SystemDateDemoState createState() => _SystemDateDemoState();
}

class _SystemDateDemoState extends State<SystemDateDemo> {
  DateTime _nowDate = DateTime.now();

  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  //Future<DateTime> showDatePicker
  //Future是异步类型,有两种方式可以获取异步结果
  //方法1.then
  void _showSystemDatePicker() {
    showDatePicker(
            context: context,
            initialDate: _nowDate,
            firstDate: DateTime(1980),
            lastDate: DateTime(2100),
            locale: prefix0.Locale('zh') //非必须
            )
        .then((result) {
      setState(() {
        if (result != null) {
          this._nowDate = result;
        }
      });
    });
  }

  //方法2.async+await
  void _showSystemTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this._nowTime,
    );
    setState(() {
      if (result != null) {
        this._nowTime = result;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // var now = DateTime.now();
    // print(now); //2019-06-08 12:08:10.140421

    // //时间戳
    // print(now.millisecondsSinceEpoch); //1559967090998

    // print(DateTime.fromMillisecondsSinceEpoch(
    //     1559967090998)); //2019-06-08 12:11:30.998

    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd])); //2019年06月08
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('系统日期控件使用'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showSystemDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${this._nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showSystemTimePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
