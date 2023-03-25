import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoUrl;

  VideoPlayerPage({required this.videoUrl});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _controller.play();
      } else {
        _controller.pause();
      }
    });
  }

  void _seekTo(Duration duration) {
    setState(() {
      _controller.seekTo(duration);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(_controller),
            _isPlaying
                ? Container()
                : Center(child: CircularProgressIndicator()),
            GestureDetector(
              onTap: _togglePlayPause,
              child: Container(),
            ),
          ],
        ),
      )
          : Center(child: CircularProgressIndicator()),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         icon: Icon(Icons.play_arrow),
      //         onPressed: () {
      //           _togglePlayPause();
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.pause),
      //         onPressed: () {
      //           _togglePlayPause();
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.replay_10),
      //         onPressed: () {
      //           _seekTo(_controller.value.position - Duration(seconds: 10));
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.forward_10),
      //         onPressed: () {
      //           _seekTo(_controller.value.position + Duration(seconds: 10));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
