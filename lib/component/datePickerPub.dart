import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerPubDemo extends StatefulWidget {
  DatePickerPubDemo({Key key}) : super(key: key);

  @override
  _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  DateTime _dateTime = new DateTime.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(context,
        pickerTheme: DateTimePickerTheme(
            showTitle: true,
            confirm: Text('确定', style: TextStyle(color: Colors.red)),
            cancel: Text('取消', style: TextStyle(color: Colors.cyan))),
        minDateTime: DateTime.parse('1990-05-12'),
        maxDateTime: DateTime.parse('2021-11-25'),
        initialDateTime: _dateTime,
        dateFormat: 'yyyy-MM-dd',
        locale: DateTimePickerLocale.zh_cn, onCancel: () {
      debugPrint('onCancel');
    }, onConfirm: (DateTime dateTime, List<int> selectedIndex) {
      setState(() {
        this._dateTime = dateTime;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方Date库'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          '${formatDate(_dateTime, [yyyy, '年', mm, '月', dd])}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showDatePicker,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
