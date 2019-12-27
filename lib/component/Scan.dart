import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:barcode_scan/barcode_scan.dart';


class ScanDemo extends StatefulWidget {
  ScanDemo({Key key}) : super(key: key);

  @override
  _ScanDemoState createState() => _ScanDemoState();
}

class _ScanDemoState extends State<ScanDemo> {
  String barcode='';

  // Future _scan() async {
  //   try {
  //     String barcode = await BarcodeScanner.scan();
  //     setState(() {
  //       return this.barcode = barcode;
  //     });
  //   } on PlatformException catch (e) {
  //     if (e.code == BarcodeScanner.CameraAccessDenied) {
  //       setState(() {
  //         return this.barcode = 'The user did not grant the camera permission!';
  //       });
  //     } else {
  //       setState(() {
  //         return this.barcode = 'Unknown error: $e';
  //       });
  //     }
  //   } on FormatException {
  //     setState(() => this.barcode =
  //         'null (User returned using the "back"-button before scanning anything. Result)');
  //   } catch (e) {
  //     setState(() => this.barcode = 'Unknown error: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.photo_camera),
        onPressed:(){

        },
      ),
      appBar: AppBar(
        title: Text('扫描条形码二维码'),
      ),
      body: Text('${this.barcode}'),
    );
  }
}