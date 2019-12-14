import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack堆叠组件-Align、Positioned布局'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.orange,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(-1, -1),
              child: Icon(Icons.search,size: 40,color: Colors.white)
            ),
            Align(
                alignment: Alignment.center,
                child: Icon(Icons.home,size: 40,color: Colors.white)
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Icon(Icons.settings_brightness,size: 40,color: Colors.white)
            )
          ],
        ),
      ),
    );
  }
}