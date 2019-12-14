import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('自定义组件'),
        ),
        body:LayOutDemo(),
      ),
    );
  }
}

class LayOutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600,
      width: 400,
      color: Colors.black,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: IconContainer(Icons.satellite,color: Colors.blue)
          ),
          Expanded(
              flex: 1,
              child: IconContainer(Icons.home,color: Colors.orange)
          ),
          Expanded(
              flex: 1,
              child: IconContainer(Icons.search,color: Colors.red)
          )
        ],
      ),
    );
  }
}

//自定义组件
class IconContainer extends StatelessWidget{
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white),
      ),
    );
  }
}