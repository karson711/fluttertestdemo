import 'package:flutter/material.dart';

class LayoutColumnDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        IconContainer(Icons.search,color: Colors.blue),
        IconContainer(Icons.home,color: Colors.orange),
        IconContainer(Icons.satellite,color: Colors.red)
      ],
    );
  }
}

class LayoutRowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconContainer(Icons.search,color: Colors.blue),
        IconContainer(Icons.home,color: Colors.orange),
        IconContainer(Icons.satellite,color: Colors.red)
      ],
    );
  }
}

class IconContainer extends StatelessWidget{

  Color color = Colors.red;
  double size = 32.0;
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
        child: Icon(this.icon,size: this.size,color: Colors.white)
      ),
    );
  }
}


