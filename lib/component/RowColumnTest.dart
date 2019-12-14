import 'package:flutter/material.dart';

class RowColumnTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  height: 180,
                  color: Colors.black,
                  child: Text('hello, Flutter'),
                )
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.fill),
                )
            ),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.fill),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 85,
                        child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.fill),
                      )
                    ],
                  ),
                )
            ),
          ],
        )
      ],
    );
  }
}
