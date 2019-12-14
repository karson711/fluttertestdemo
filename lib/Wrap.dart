import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      width: 420,
      height: 500,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.horizontal,
        children: <Widget>[
          MyButton('第1集'),
          MyButton('第2集'),
          MyButton('第3集'),
          MyButton('第4集'),
          MyButton('第5集'),
          MyButton('第6集'),
          MyButton('第7集'),
          MyButton('第8集'),
          MyButton('第9集'),
          MyButton('第10集'),
          MyButton('第11集'),
          MyButton('第12集'),
          MyButton('第13集'),
          MyButton('第14集'),
          MyButton('第15集'),
          MyButton('第16集'),
          MyButton('第17集'),
          MyButton('第18集'),
          MyButton('第19集'),
          MyButton('第20集')

        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {

  String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      textColor: Theme.of(context).accentColor,
      child: Text(this.text),
            onPressed: () {}
        );
  }
}

