import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherDemo extends StatefulWidget {
  UrlLauncherDemo({Key key}) : super(key: key);

  @override
  _UrlLauncherDemoState createState() => _UrlLauncherDemoState();
}

class _UrlLauncherDemoState extends State<UrlLauncherDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('urllauncher'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('打开浏览器'),
              onPressed: () async {
                const url = 'https://cflutter.com';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('拨打电话'),
              onPressed: () async {
                const tel = 'tel:10086';
                if (await canLaunch(tel)) {
                  await launch(tel);
                } else {
                  throw 'Could not launch $tel';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('发送短信'),
              onPressed: () async {
                const sms = 'sms:10086';
                if (await canLaunch(sms)) {
                  await launch(sms);
                } else {
                  throw 'Could not launch $sms';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('打开外部应用'),
              onPressed: () async {
                /*
                    weixin://
                    alipays://
                  */
                const url = 'alipay://';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
