import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('颜色阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10, //阴影
                splashColor: Colors.red, //波纹颜色
                onPressed: () {
                  print('颜色阴影按钮点击');
                },
              ),
              SizedBox(width: 10),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                color: Colors.blue,
                textColor: Colors.white,
                label: Text('图标按钮'),
                onPressed: () {
                  print('图标按钮');
                },
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: JKButton(
                    text: '宽度按钮',
                    width: 100,
                    height: 50,
                    pressed: () {
                      print('自定义按钮');
                    }),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    onPressed: () {
                      print('自适应按钮');
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                child: Text('OutlineButton'),
                color: Colors.red, //没有效果
                textColor: Colors.blue,
                onPressed: () {
                  print('OutlineButton');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class JKButton extends StatelessWidget {
  final text;
  final double height;
  final double width;
  final Color textcolor;
  final Color backcolor;
  final pressed;

  JKButton(
      {this.text = '',
      this.height = 30,
      this.width = 80,
      this.textcolor = Colors.white,
      this.backcolor = Colors.blue,
      this.pressed = null});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        textColor: this.textcolor,
        color: this.backcolor,
        onPressed: this.pressed,
      ),
    );
  }
}
