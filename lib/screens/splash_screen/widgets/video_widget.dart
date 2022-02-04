import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Piatto_ScreenGrab.MOV')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _controller!.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _controller!.value.isInitialized
          ? AspectRatio(
              aspectRatio: kIsWeb ? 5 : .8,
              child: VideoPlayer(_controller!),
            )
          : Container(),
    );
  }
}
