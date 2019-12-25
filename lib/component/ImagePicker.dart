import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class ImagePickerPage extends StatefulWidget {
  ImagePickerPage({Key key}) : super(key: key);

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  File _image;

  Widget _buildImage() {
    if (this._image == null) {
      return Text('请选择图片');
    }
    return Image.file(this._image);
  }

  Future _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera,maxWidth: 400);

    setState(() {
      this._image = image;
    });
  }

  Future _pickPicture() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery,maxWidth: 400);

    setState(() {
      this._image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片选择、拍照上传'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('拍照'),
              onPressed: _takePhoto,
            ),
            RaisedButton(
              child: Text('选择图库图片'),
              onPressed: _pickPicture,
            ),
            this._buildImage()
          ],
        ),
      ),
    );
  }
}
