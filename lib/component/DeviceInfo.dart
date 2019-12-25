import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DeviceInfoPage extends StatefulWidget {
  DeviceInfoPage({Key key}) : super(key: key);

  @override
  _DeviceInfoPageState createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {
  String result = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getDeviceInfo();
  }

  void _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    // AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // print('Running on ${androidInfo.androidId}'); // e.g. "Moto G (4)"

    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    print('Running on ${iosInfo.utsname.machine}');

    // if (iosInfo.utsname.machine != null) {
    //   result = iosInfo.identifierForVendor;
    // }else{
    //   // result = androidInfo.androidId;
    // }

    setState(() {
      this.result = iosInfo.utsname.machine;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('获取当前设备信息'),
      ),
      body: Text('${this.result}'),
    );
  }
}
