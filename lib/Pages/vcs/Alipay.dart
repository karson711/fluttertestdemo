import 'package:flutter/material.dart';

// import 'package:sy_flutter_alipay/sy_flutter_alipay.dart';
import 'package:dio/dio.dart';

class AlipayDemo extends StatefulWidget {
  AlipayDemo({Key key}) : super(key: key);

  @override
  _AlipayDemoState createState() => _AlipayDemoState();
}

class _AlipayDemoState extends State<AlipayDemo> {

  void _doAlipay() async{
    // var serverApi = 'http://agent.itying.com/alipay/';

    // var serverData = await Dio().get(serverApi);
    // var payInfo = serverData.data;
    // var result = await SyFlutterAlipay.pay(
    //   payInfo,
    //   urlScheme: '',//你的ios urlScheme
    //   // isSandbox: true//是否是沙箱环境，只对android有效
    // );
    // print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AliPay'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('支付宝支付'),
              onPressed: _doAlipay,
            )
          ],
        ),
      ),
    );
  }
}
