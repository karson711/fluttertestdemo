import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityDemo extends StatefulWidget {
  ConnectivityDemo({Key key}) : super(key: key);

  @override
  _ConnectivityDemoState createState() => _ConnectivityDemoState();
}

class _ConnectivityDemoState extends State<ConnectivityDemo> {
  var subscription;
  String _stateText;

  void _getCurrentNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      setState(() {
        this._stateText = '当前处于手机网络';
      });
    } else if (connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        this._stateText = '当前处于wifi';
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //获取当前网络状态
    this._getCurrentNetwork();

    //监听网络变化
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      print(result);
      if (result == ConnectivityResult.wifi) {
        setState(() {
          this._stateText = '处于wifi';
        });
      } else if (result == ConnectivityResult.mobile) {
        setState(() {
          this._stateText = '处于手机网络';
        });
      } else {
        setState(() {
          this._stateText = '没有网络';
        });
      }
    });
  }

  @override
  dispose() {
    super.dispose();

    subscription.cancel(); //注意
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('检测网络'),
      ),
      body: Text('${this._stateText}'),
    );
  }
}
