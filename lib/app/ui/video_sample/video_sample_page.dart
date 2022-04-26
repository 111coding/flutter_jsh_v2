import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/video_sample/components/video_sample_body.dart';

class VideoSamplePage extends StatelessWidget {
  const VideoSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VideoSampleBody(),
    );
  }
}
