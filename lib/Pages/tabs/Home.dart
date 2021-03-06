import 'package:flutter/material.dart';
import '../vcs/ProductDetail.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('微信支付'),
          onPressed: () {
            Navigator.pushNamed(context, '/wxpay');
          },
        ),
        RaisedButton(
          child: Text('支付宝支付'),
          onPressed: () {
            Navigator.pushNamed(context, '/alipay');
          },
        ),
        RaisedButton(
          child: Text('urllauncher打开外部应用、打开浏览器'),
          onPressed: () {
            Navigator.pushNamed(context, '/urllauncher');
          },
        ),
        RaisedButton(
          child: Text('检查版本升级app'),
          onPressed: () {
            Navigator.pushNamed(context, '/appversion');
          },
        ),
        RaisedButton(
          child: Text('扫描二维码条形码'),
          onPressed: () {
            Navigator.pushNamed(context, '/scan');
          },
        ),
        RaisedButton(
          child: Text('本地存储'),
          onPressed: () {
            Navigator.pushNamed(context, '/storage');
          },
        ),
        RaisedButton(
          child: Text('Connectivity网络监测'),
          onPressed: () {
            Navigator.pushNamed(context, '/connectivity');
          },
        ),
        RaisedButton(
          child: Text('Device 或者设备信息'),
          onPressed: () {
            Navigator.pushNamed(context, '/deviceinfo');
          },
        ),
        RaisedButton(
          child: Text('video_player+chewie播放视频(iOS需真机)'),
          onPressed: () {
            Navigator.pushNamed(context, '/chewieVideo');
          },
        ),
        RaisedButton(
            child: Text("拍照上传、选择图片"),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/imagepicker');
            }),
        RaisedButton(
            child: Text("跳转第三方库Date页 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/datepickerpub');
            }),
        RaisedButton(
            child: Text("跳转第三方轮播图Swiper "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/swiperdemo');
            }),
        RaisedButton(
            child: Text("跳转Dialog页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/dialogdemo');
            }),
        RaisedButton(
            child: Text("跳转Http请求页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/httprequest');
            }),
        RaisedButton(
            child: Text("跳转Dio请求页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/diorequest');
            }),
        RaisedButton(
            child: Text("跳转高德定位Location页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/amaplocation');
            }),
        RaisedButton(
            child: Text('基本路由传值'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProductDetailPage();
              }));
            }),
        RaisedButton(
            child: Text('命名路由传值'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/productinfo', arguments: {'pid': 456});
            }),
        RaisedButton(
          child: Text("跳转到登录页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("跳转到注册页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        ),
        RaisedButton(
          child: Text("跳转AppBarDemo页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/appBarDemo');
          },
        ),
        RaisedButton(
            child: Text("TabController定义顶部tab切换 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/tabBarController');
            }),
        RaisedButton(
            child: Text("跳转按钮展示页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/buttons');
            }),
        RaisedButton(
            child: Text("跳转表单TextField展示页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/textfield');
            }),
        RaisedButton(
            child: Text("跳转表单CheckBox展示页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/checkbox');
            }),
        RaisedButton(
            child: Text("跳转表单Radio展示页面 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/radio');
            }),
        RaisedButton(
            child: Text("跳转表单Demo页 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/listdemo');
            }),
        RaisedButton(
            child: Text("跳转系统Date页 "),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/systemdate');
            }),
      ],
    );
  }
}
