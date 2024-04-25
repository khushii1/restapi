import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class videpPlater extends StatefulWidget {
  const videpPlater({super.key});

  @override
  State<videpPlater> createState() => _videpPlaterState();
}

class _videpPlaterState extends State<videpPlater> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController=VideoPlayerController.networkUrl(https://www.youtube.com/watch?v=eu3ncE1TC9k);

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold();
  }
}
