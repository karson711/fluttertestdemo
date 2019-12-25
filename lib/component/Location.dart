import 'package:flutter/material.dart';
import 'package:amap_location/amap_location.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key key}) : super(key: key);

  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  AMapLocation _loc;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('直接获取定位'),
        ),
        body: new Center(
          child: _loc == null
              ? new Text("正在定位")
              : new Text("定位成功:${_loc.formattedAddress}"),
        ));
  }

  void _checkPersmission() async {
    AMapLocation loc = await AMapLocationClient.getLocation(true);
    setState(() {
      _loc = loc;
    });
  }

  @override
  void initState() {
    _checkPersmission();
    super.initState();
  }

  @override
  void dispose() {
    //这里可以停止定位
    //AMapLocationClient.stopLocation();

    super.dispose();
  }
}