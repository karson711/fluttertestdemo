import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  SwiperDemo({Key key}) : super(key: key);

  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
    {"url": "https://www.itying.com/images/flutter/5.png"},
    {"url": "https://www.itying.com/images/flutter/6.png"},
    {"url": "https://www.itying.com/images/flutter/7.png"},
    {"url": "https://www.itying.com/images/flutter/8.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图组件Swiper'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.cover,
                  );
                },
                itemCount: imgList.length,
                viewportFraction: 0.8,
                scale: 0.9,
                loop: true,
                autoplay: true,
                duration: 1000,
                pagination: new SwiperPagination(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.cover,
                  );
                },
                itemCount: imgList.length,
                itemWidth: 300.0,
                layout: SwiperLayout.STACK,
                loop: true,
                autoplay: true,
                duration: 1000,
                pagination: new SwiperPagination(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.cover,
                  );
                },
                itemCount: imgList.length,
                itemWidth: 300.0,
                itemHeight: 400.0,
                layout: SwiperLayout.TINDER,
                loop: true,
                autoplay: true,
                duration: 1000,
                pagination: new SwiperPagination(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
