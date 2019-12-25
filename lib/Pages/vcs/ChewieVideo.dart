import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class ChewieVideoDemo extends StatefulWidget {
  ChewieVideoDemo({Key key}) : super(key: key);

  @override
  _ChewieVideoDemoState createState() =>
      _ChewieVideoDemoState();
}

class _ChewieVideoDemoState extends State<ChewieVideoDemo> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4
    videoPlayerController = VideoPlayerController.network(
        'https://www.w3school.com.cn/example/html5/mov_bbb.mp4');

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
  }

  /*销毁*/
  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('在线视频播放'),
      ),
      body: Center(
        child: Chewie(
          controller: chewieController,
        )
      ),
    );
  }
}
